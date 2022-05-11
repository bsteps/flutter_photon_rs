extern crate photon_rs;

use std::io::{Cursor, Write};

use anyhow::Result;
use flutter_rust_bridge::ZeroCopyBuffer;
use image::ImageOutputFormat;
use img_parts::{DynImage, ImageEXIF, ImageICC};
use photon_rs::{
    channels, colour_spaces, conv, effects,
    filters::filter,
    monochrome, multiple,
    native::{self, open_image_from_bytes},
    transform, PhotonImage, Rgb,
};

pub use photon_rs::Rgba as PhotonRgba;

#[derive(Default)]
pub struct ManipulationInput {
    pub original_bytes: Vec<u8>,
    pub filters: Vec<PhotonFilter>,
    pub output_format: OutputFormat,
    pub quality: u8,
}

pub struct PhotonFilter {
    pub name: String,
    pub val1: i64,
    pub val2: i64,
    pub val3: i64,
    pub val4: i64,
    pub image2_bytes: Vec<u8>,
    pub rgba: Box<Rgba>,
    pub val1f: f64,
}

pub struct Rgba {
    pub r: u8,
    pub g: u8,
    pub b: u8,
    pub a: u8,
}

impl Rgba {
    pub fn to_photon_rgba(&self) -> PhotonRgba {
        PhotonRgba::new(self.r, self.g, self.b, self.a)
    }
}

impl PhotonFilter {
    pub fn apply(&self, mut img1: PhotonImage) -> PhotonImage {
        let img = &mut img1;

        // Monochrome
        if self.name == "grayscale" {
            monochrome::grayscale(img);
        }
        if self.name == "threshold" {
            monochrome::threshold(img, self.val1 as u32);
        }
        if self.name == "grayscale_human_correction" {
            monochrome::grayscale_human_corrected(img);
        }
        if self.name == "decompose_min" {
            monochrome::decompose_min(img);
        }
        if self.name == "decompose_max" {
            monochrome::decompose_max(img);
        }
        if self.name == "sepia" {
            monochrome::sepia(img);
        }
        if self.name == "grayscale_shades" {
            monochrome::grayscale_shades(img, self.val1 as u8);
        }
        if self.name == "red_grayscale" {
            monochrome::single_channel_grayscale(img, 0);
        }
        if self.name == "green_grayscale" {
            monochrome::single_channel_grayscale(img, 1);
        }
        if self.name == "blue_grayscale" {
            monochrome::single_channel_grayscale(img, 2);
        }

        // Channels
        if self.name == "alter_channel" {
            channels::alter_channel(img, self.val1 as usize, self.val2 as i16);
        }
        if self.name == "swap_channels" {
            channels::swap_channels(img, self.val1 as usize, self.val2 as usize);
        }
        if self.name == "remove_red_channel" {
            channels::remove_red_channel(img, self.val1 as u8);
        }
        if self.name == "remove_blue_channel" {
            channels::remove_blue_channel(img, self.val1 as u8);
        }
        if self.name == "remove_green_channel" {
            channels::remove_green_channel(img, self.val1 as u8);
        }

        // Transfromation
        if self.name == "crop" {
            return transform::crop(
                img,
                self.val1 as u32,
                self.val2 as u32,
                self.val3 as u32,
                self.val4 as u32,
            );
        }
        if self.name == "fliph" {
            transform::fliph(img);
        }
        if self.name == "flipv" {
            transform::flipv(img);
        }
        if self.name == "padding_bottom" {
            return transform::padding_bottom(img, self.val1 as u32, self.rgba.to_photon_rgba());
        }
        if self.name == "padding_left" {
            return transform::padding_left(img, self.val1 as u32, self.rgba.to_photon_rgba());
        }
        if self.name == "padding_right" {
            return transform::padding_right(img, self.val1 as u32, self.rgba.to_photon_rgba());
        }
        if self.name == "padding_top" {
            return transform::padding_top(img, self.val1 as u32, self.rgba.to_photon_rgba());
        }
        if self.name == "padding_uniform" {
            return transform::padding_uniform(img, self.val1 as u32, self.rgba.to_photon_rgba());
        }
        if self.name == "resize" {
            return match self.val3 {
                1 => transform::resize(
                    img,
                    self.val1 as u32,
                    self.val2 as u32,
                    transform::SamplingFilter::Nearest,
                ),
                2 => transform::resize(
                    img,
                    self.val1 as u32,
                    self.val2 as u32,
                    transform::SamplingFilter::Triangle,
                ),
                3 => transform::resize(
                    img,
                    self.val1 as u32,
                    self.val2 as u32,
                    transform::SamplingFilter::CatmullRom,
                ),
                4 => transform::resize(
                    img,
                    self.val1 as u32,
                    self.val2 as u32,
                    transform::SamplingFilter::Gaussian,
                ),
                5 => transform::resize(
                    img,
                    self.val1 as u32,
                    self.val2 as u32,
                    transform::SamplingFilter::Lanczos3,
                ),
                _ => transform::resize(
                    img,
                    self.val1 as u32,
                    self.val2 as u32,
                    transform::SamplingFilter::Nearest,
                ),
            };
        }

        // Multiple
        if self.name == "watermark" {
            let watermark_img =
                open_image_from_bytes(&(self.image2_bytes)).expect("invalid image data");

            multiple::watermark(img, &watermark_img, self.val1 as u32, self.val2 as u32);
        }
        if self.name == "apply_gradient" {
            multiple::apply_gradient(img);
        }
        if self.name == "replace_background" {
            let background_img =
                open_image_from_bytes(&(self.image2_bytes)).expect("invalid image data");
            let rgb = Rgb::new(self.rgba.r, self.rgba.g, self.rgba.b);
            multiple::replace_background(img, &background_img, rgb);
        }
        if self.name.contains("blend_") {
            let image2_img =
                open_image_from_bytes(&(self.image2_bytes)).expect("invalid image data");
            let blend_mode = self.name.replace("blend_", "");
            multiple::blend(img, &image2_img, &blend_mode);
        }
        // Effects
        if self.name == "adjust_contrast" {
            effects::adjust_contrast(img, self.val1f as f32);
        }
        if self.name == "color_horizontal_strips" {
            let rgb = Rgb::new(self.rgba.r, self.rgba.g, self.rgba.b);

            effects::color_horizontal_strips(img, self.val1 as u8, rgb);
        }
        if self.name == "color_vertical_strips" {
            let rgb = Rgb::new(self.rgba.r, self.rgba.g, self.rgba.b);

            effects::color_vertical_strips(img, self.val1 as u8, rgb);
        }
        if self.name == "colorize" {
            effects::colorize(img);
        }
        if self.name == "frosted_glass" {
            effects::frosted_glass(img);
        }
        if self.name == "halftone" {
            effects::halftone(img);
        }
        if self.name == "horizontal_strips" {
            effects::horizontal_strips(img, self.val1 as u8);
        }
        if self.name == "vertical_strips" {
            effects::vertical_strips(img, self.val1 as u8);
        }
        if self.name == "multiple_offsets" {
            effects::multiple_offsets(
                img,
                self.val1 as u32,
                self.val2 as usize,
                self.val3 as usize,
            );
        }
        if self.name == "offset" {
            effects::offset(img, self.val1 as usize, self.val2 as u32);
        }
        if self.name == "oil" {
            effects::oil(img, self.val1 as i32, self.val1f);
        }
        if self.name == "primary" {
            effects::primary(img);
        }
        if self.name == "solarize" {
            effects::solarize(img);
        }
        if self.name == "tint" {
            effects::tint(img, self.val1 as u32, self.val2 as u32, self.val3 as u32);
        }
        if self.name == "inc_brightness" {
            effects::inc_brightness(img, self.val1 as u8);
        }

        // Color Spaces
        if self.name.contains("hsl_") {
            let mode = self.name.replace("hsl_", "");

            colour_spaces::hsl(img, &mode, self.val1f as f32);
        }
        if self.name.contains("hsv_") {
            let mode = self.name.replace("hsv_", "");

            colour_spaces::hsv(img, &mode, self.val1f as f32);
        }
        if self.name.contains("lch_") {
            let mode = self.name.replace("lch_", "");

            colour_spaces::lch(img, &mode, self.val1f as f32);
        }
        if self.name == "mix_with_colour" {
            let rgb = Rgb::new(self.rgba.r, self.rgba.g, self.rgba.b);

            colour_spaces::mix_with_colour(img, rgb, self.val1f as f32);
        }

        // Conv
        if self.name == "box_blur" {
            conv::box_blur(img);
        }
        if self.name == "detect_45_deg_lines" {
            conv::detect_45_deg_lines(img);
        }
        if self.name == "detect_135_deg_lines" {
            conv::detect_135_deg_lines(img);
        }
        if self.name == "detect_horizontal_lines" {
            conv::detect_horizontal_lines(img);
        }
        if self.name == "detect_vertical_lines" {
            conv::detect_vertical_lines(img);
        }
        if self.name == "edge_detection" {
            conv::edge_detection(img);
        }
        if self.name == "edge_one" {
            conv::edge_one(img);
        }
        if self.name == "emboss" {
            conv::emboss(img);
        }
        if self.name == "identity" {
            conv::identity(img);
        }
        if self.name == "laplace" {
            conv::laplace(img);
        }
        if self.name == "noise_reduction" {
            conv::noise_reduction(img);
        }
        if self.name == "prewitt_horizontal" {
            conv::prewitt_horizontal(img);
        }
        if self.name == "sharpen" {
            conv::sharpen(img);
        }
        if self.name == "sobel_horizontal" {
            conv::sobel_horizontal(img);
        }
        if self.name == "sobel_vertical" {
            conv::sobel_vertical(img);
        }
        if self.name == "gaussian_blur" {
            conv::gaussian_blur(img, self.val1 as i32);
        }

        // Preset Filters
        let preset_filters = vec![
            "oceanic",
            "islands",
            "marine",
            "seagreen",
            "flagblue",
            "diamante",
            "liquid",
            "radio",
            "twenties",
            "rosetint",
            "mauve",
            "bluechrome",
            "vintage",
            "perfume",
            "serenity",
            "golden",
            "pastel_pink",
            "cali",
            "dramatic",
            "firenze",
            "obsidian",
            "lofi",
        ];

        // Filters
        let value: &str = &(self.name);
        if preset_filters.contains(&value) {
            filter(img, &self.name);
        }

        img1
    }
}

impl Default for OutputFormat {
    fn default() -> Self {
        OutputFormat::Png
    }
}

pub enum OutputFormat {
    Png,
    Jpeg,
    Gif,
}

impl self::ManipulationInput {
    pub fn save(&self) -> Result<ZeroCopyBuffer<Vec<u8>>> {
        let mut img =
            open_image_from_bytes(&(self.original_bytes)).expect("Error getting image from bytes");

        for filter in self.filters.iter() {
            img = filter.apply(img);
        }

        let width = img.get_width();
        let height = img.get_height();
        let raw_pixels = native::image_to_bytes(img);
        let _len = raw_pixels.len();

        let format = match self.output_format {
            OutputFormat::Png => ImageOutputFormat::Png,
            OutputFormat::Jpeg => ImageOutputFormat::Jpeg(100),
            OutputFormat::Gif => ImageOutputFormat::Gif,
        };

        let mut bytes = vec![];

        let (iccp, exif) = DynImage::from_bytes(self.original_bytes.clone().into())
            .expect("image loaded")
            .map_or((None, None), |dimg| (dimg.icc_profile(), dimg.exif()));

        if iccp.is_some() || exif.is_some() {
            let mut out = vec![];
            image::write_buffer_with_format(
                &mut Cursor::new(&mut out),
                &raw_pixels,
                width,
                height,
                image::ColorType::Rgba8,
                format,
            )
            .expect("error writing buff with format");

            match DynImage::from_bytes(out.clone().into()).expect("image loaded") {
                Some(mut dimg) => {
                    dimg.set_icc_profile(iccp);
                    dimg.set_exif(exif);
                    dimg.encoder()
                        .write_to(&mut bytes)
                        .expect("Error Writing To Buffer");
                }
                None => {
                    bytes.write_all(&out).expect("output file written");
                }
            };
        } else {
            image::write_buffer_with_format(
                &mut Cursor::new(&mut bytes),
                &raw_pixels,
                width,
                height,
                image::ColorType::Rgba8,
                format,
            )
            .expect("error writing buff with format");
        }

        Ok(ZeroCopyBuffer(bytes))
    }
}

pub fn manipulate_image(a: ManipulationInput) -> Result<ZeroCopyBuffer<Vec<u8>>> {
    a.save()
}

#[cfg(test)]
mod tests {
    use std::time::SystemTime;

    use super::*;

    #[test]
    fn test_features() {
        let buffer = std::fs::read("asset/image.jpg").expect("File Should Open");
        let start1 = SystemTime::now();

        let buffer = manipulate_image(ManipulationInput {
            original_bytes: buffer,
            filters: vec![PhotonFilter {
                name: String::from("grayscale"),
                val1: 100,
                val2: 3000,
                val3: 1,
                image2_bytes: vec![],
                rgba: Box::new(Rgba {
                    r: 29,
                    g: 45,
                    b: 61,
                    a: 255,
                }),
                val4: 1,
                val1f: 0.0,
            }],
            output_format: OutputFormat::Jpeg,
            quality: 100,
        })
        .expect("File Should Open")
        .0;

        std::fs::write("asset/image_manipulated.jpg", &buffer).expect("File Should be saved");

        let end = SystemTime::now();
        let duration = end.duration_since(start1).unwrap();
        println!("it took {}ms", duration.as_millis());
    }
}
