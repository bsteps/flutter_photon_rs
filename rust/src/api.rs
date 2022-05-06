extern crate photon_rs;

use std::io::Cursor;

use anyhow::Result;
use flutter_rust_bridge::ZeroCopyBuffer;
use image::{DynamicImage::ImageRgba8, ImageBuffer, ImageOutputFormat};
// use img_parts::DynImage;
// use img_parts::{DynImage, ImageEXIF, ImageICC};
use photon_rs::{
    channels::{
        alter_channel, remove_blue_channel, remove_green_channel, remove_red_channel, swap_channels,
    },
    filters::filter,
    monochrome::{
        decompose_max, decompose_min, grayscale, grayscale_human_corrected, grayscale_shades,
        sepia, single_channel_grayscale, threshold,
    },
    transform::{
        crop, fliph, flipv, padding_bottom, padding_left, padding_right, padding_top,
        padding_uniform, resize, SamplingFilter,
    },
    PhotonImage,
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
    pub rgba: Box<Rgba>,
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
        if self.name == "grayscale" {
            grayscale(img);
        }
        if self.name == "threshold" {
            threshold(img, self.val1 as u32);
        }
        if self.name == "grayscale_human_correction" {
            grayscale_human_corrected(img);
        }
        if self.name == "decompose_min" {
            decompose_min(img);
        }
        if self.name == "decompose_max" {
            decompose_max(img);
        }
        if self.name == "sepia" {
            sepia(img);
        }
        if self.name == "grayscale_shades" {
            grayscale_shades(img, self.val1 as u8);
        }
        if self.name == "red_grayscale" {
            single_channel_grayscale(img, 0);
        }
        if self.name == "green_grayscale" {
            single_channel_grayscale(img, 1);
        }
        if self.name == "blue_grayscale" {
            single_channel_grayscale(img, 2);
        }

        if self.name == "alter_channel" {
            alter_channel(img, self.val1 as usize, self.val2 as i16);
        }

        if self.name == "swap_channels" {
            swap_channels(img, self.val1 as usize, self.val2 as usize);
        }

        if self.name == "remove_red_channel" {
            remove_red_channel(img, self.val1 as u8);
        }
        if self.name == "remove_blue_channel" {
            remove_blue_channel(img, self.val1 as u8);
        }
        if self.name == "remove_green_channel" {
            remove_green_channel(img, self.val1 as u8);
        }

        // Transfromation
        if self.name == "crop" {
            return crop(
                img,
                self.val1 as u32,
                self.val2 as u32,
                self.val3 as u32,
                self.val4 as u32,
            );
        }
        if self.name == "fliph" {
            fliph(img);
        }
        if self.name == "flipv" {
            flipv(img);
        }
        if self.name == "padding_bottom" {
            return padding_bottom(img, self.val1 as u32, self.rgba.to_photon_rgba());
        }
        if self.name == "padding_left" {
            return padding_left(img, self.val1 as u32, self.rgba.to_photon_rgba());
        }
        if self.name == "padding_right" {
            return padding_right(img, self.val1 as u32, self.rgba.to_photon_rgba());
        }
        if self.name == "padding_top" {
            return padding_top(img, self.val1 as u32, self.rgba.to_photon_rgba());
        }
        if self.name == "padding_uniform" {
            return padding_uniform(img, self.val1 as u32, self.rgba.to_photon_rgba());
        }
        if self.name == "resize" {
            return match self.val3 {
                1 => resize(
                    img,
                    self.val1 as u32,
                    self.val2 as u32,
                    SamplingFilter::Nearest,
                ),
                2 => resize(
                    img,
                    self.val1 as u32,
                    self.val2 as u32,
                    SamplingFilter::Triangle,
                ),
                3 => resize(
                    img,
                    self.val1 as u32,
                    self.val2 as u32,
                    SamplingFilter::CatmullRom,
                ),
                4 => resize(
                    img,
                    self.val1 as u32,
                    self.val2 as u32,
                    SamplingFilter::Gaussian,
                ),
                5 => resize(
                    img,
                    self.val1 as u32,
                    self.val2 as u32,
                    SamplingFilter::Lanczos3,
                ),
                _ => resize(
                    img,
                    self.val1 as u32,
                    self.val2 as u32,
                    SamplingFilter::Nearest,
                ),
            };
        }

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
        let mut img = photon_rs::native::open_image_from_bytes(&(self.original_bytes))?;

        for filter in self.filters.iter() {
            img = filter.apply(img);
        }

        let raw_pixels = img.get_raw_pixels();
        let _len = raw_pixels.len();
        let img_buffer =
            ImageBuffer::from_vec(img.get_width(), img.get_height(), raw_pixels).unwrap();
        let img = ImageRgba8(img_buffer);

        let format = match self.output_format {
            OutputFormat::Png => ImageOutputFormat::Png,
            OutputFormat::Jpeg => ImageOutputFormat::Jpeg(100),
            OutputFormat::Gif => ImageOutputFormat::Gif,
        };
        let mut bytes = Vec::with_capacity(_len);

        // let (iccp, exif) = DynImage::from_bytes(self.original_bytes.clone().into())
        //     .expect("image loaded")
        //     .map_or((None, None), |dimg| (dimg.icc_profile(), dimg.exif()));

        // img.write_to(&mut Cursor::new(&mut bytes), format).expect("Error Writing To Buffer");
        img.write_to(&mut Cursor::new(&mut bytes), format)
            .expect("Error Writing To Buffer");
        // if iccp.is_some() || exif.is_some() {
        //     match DynImage::from_bytes(bytes.clone().into()).expect("image loaded") {
        //         Some(mut dimg) => {
        //             dimg.set_icc_profile(iccp);
        //             dimg.set_exif(exif);
        //             dimg.encoder()
        //                 .write_to(&mut bytes)
        //                 .expect("Error Writing To Buffer");
        //         }
        //         None => {}
        //     };
        // }

        Ok(ZeroCopyBuffer(bytes))
    }
}

pub fn manipulate_image(a: ManipulationInput) -> Result<ZeroCopyBuffer<Vec<u8>>> {
    a.save()
}

#[cfg(test)]
mod tests {
    // use super::*;
}
