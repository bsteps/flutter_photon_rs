import 'dart:io';
import 'dart:typed_data';

import 'package:image_manipulation/src/bridge_generated.dart';
import 'package:image_manipulation/src/util.dart';

const base = 'image_manipulation';
final path = Platform.isWindows ? '$base.dll' : 'lib$base.so';

late final dylib = openDynLib(path);
late final rustApi = ImageManipulationImpl(dylib);

class ImageManipulation {
  static Future<Uint8List> manipulate({
    required Uint8List bytes,
    bool greyscale = false,
    bool threshold = false,
    int thresholdAmount = 255,
    OutputFormat outputFormat = OutputFormat.Jpeg,
    int quality = 100,
  }) {
    assert((thresholdAmount <= 255 && thresholdAmount >= 0) || !threshold, "threshold should be between 0 and 255.");
    assert(
        outputFormat != OutputFormat.Jpeg || (quality >= 0 && quality <= 100), "quality should be between 0 and 100");

    return rustApi.manipulateImage(
      a: ManipulationInput(
        originalBytes: bytes,
        threshold: threshold,
        thresholdAmount: thresholdAmount,
        greyscale: greyscale,
        outputFormat: outputFormat,
        quality: quality,
      ),
    );
  }
}
