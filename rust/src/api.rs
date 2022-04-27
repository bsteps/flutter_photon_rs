extern crate photon_rs;

use anyhow::Result;
use flutter_rust_bridge::ZeroCopyBuffer;
use image::{ImageOutputFormat, ImageBuffer};
use img_parts::{DynImage, ImageEXIF, ImageICC};
use photon_rs::monochrome::{grayscale, threshold};
use std::io::Cursor;
use image::DynamicImage::ImageRgba8;

#[derive(Default)]
pub struct ManipulationInput {
    pub original_bytes: Vec<u8>,
    pub greyscale: bool,
    pub threshold: bool,
    pub threshold_amount: u32,
    pub output_format: OutputFormat,
    pub quality: u8,
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
        let original_bytes = self.original_bytes.clone();
        let mut img = photon_rs::native::open_image_from_bytes(&original_bytes)?;

        let (iccp, exif) = DynImage::from_bytes(original_bytes.into())
            .expect("image loaded")
            .map_or((None, None), |dimg| (dimg.icc_profile(), dimg.exif()));

        if self.greyscale {
            grayscale(&mut img);
        }

        if self.threshold {
            threshold(&mut img, self.threshold_amount);
        }

        let raw_pix = img.get_raw_pixels();
        let mut bytes = Vec::with_capacity(raw_pix.len());
        let img_buffer = ImageBuffer::from_vec(img.get_width(), img.get_height(), raw_pix).unwrap();
        let img = ImageRgba8(img_buffer);

        let format = match self.output_format {
            OutputFormat::Png => ImageOutputFormat::Png,
            OutputFormat::Jpeg => ImageOutputFormat::Jpeg(self.quality),
            OutputFormat::Gif => ImageOutputFormat::Gif,
        };

        img.write_to(&mut Cursor::new(&mut bytes), format)
            .expect("Error Writing To Buffer");

        if iccp.is_some() || exif.is_some() {
            match DynImage::from_bytes(bytes.clone().into()).expect("image loaded") {
                Some(mut dimg) => {
                    dimg.set_icc_profile(iccp);
                    dimg.set_exif(exif);
                    dimg.encoder()
                        .write_to(&mut bytes)
                        .expect("Error Writing To Buffer");
                }
                None => {}
            };
        }

        Ok(ZeroCopyBuffer(bytes))
    }
}

pub fn manipulate_image(a: ManipulationInput) -> Result<ZeroCopyBuffer<Vec<u8>>> {
    a.save()
}

pub fn greyscale_image(original_bytes: Vec<u8>) -> Result<ZeroCopyBuffer<Vec<u8>>> {
    let mut img = image::load_from_memory(&original_bytes)?;

    let (iccp, exif) = DynImage::from_bytes(original_bytes.into())
        .expect("image loaded")
        .map_or((None, None), |dimg| (dimg.icc_profile(), dimg.exif()));

    img = img.grayscale();

    let mut bytes = Vec::with_capacity(img.as_bytes().len());
    img.write_to(&mut Cursor::new(&mut bytes), ImageOutputFormat::Jpeg(100))
        .expect("Error Writing To Buffer");

    if iccp.is_some() || exif.is_some() {
        match DynImage::from_bytes(bytes.clone().into()).expect("image loaded") {
            Some(mut dimg) => {
                dimg.set_icc_profile(iccp);
                dimg.set_exif(exif);
                dimg.encoder()
                    .write_to(&mut bytes)
                    .expect("Error Writing To Buffer");
            }
            None => {}
        };
    }

    Ok(ZeroCopyBuffer(bytes))
}

pub fn checking() -> String {
    String::from("Working")
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn it_works() {
        assert_eq!(checking(), String::from("Working"));
    }

    #[test]
    fn greyscale_image_and_save() {
        let buffer = std::fs::read("asset/image2.jpg").expect("File Should Open");
        let buffer = greyscale_image(buffer).expect("File Should Open").0;
        // let dynimage = ImageRgba8(img_buffer);

        std::fs::write("asset/image2_greyscale.jpg", &buffer).expect("File Should be saved");
    }
}
