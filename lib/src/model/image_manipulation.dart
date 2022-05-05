import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:image_manipulation/src/bridge_generated.dart';
import 'package:image_manipulation/src/model/filters/filter.dart';
import 'package:image_manipulation/src/util.dart';

const base = 'image_manipulation';
final path = Platform.isWindows ? '$base.dll' : 'lib$base.so';

late final dylib = openDynLib(path);
late final rustApi = ImageManipulationImpl(dylib);

class ImageManipulation {
  static Future<Uint8List> manipulate({
    required Uint8List bytes,
    List<Filter> filters = const [],
    OutputFormat outputFormat = OutputFormat.Jpeg,
    int quality = 100,
  }) {
    // assert((thresholdAmount <= 255 && thresholdAmount >= 0) || !threshold, "threshold should be between 0 and 255.");
    assert(
        outputFormat != OutputFormat.Jpeg || (quality >= 0 && quality <= 100), "quality should be between 0 and 100");

    return compute(
      manipulateImage,
      ManipulationInput(
        originalBytes: bytes,
        filters: filters.map((e) => e.toPhotonFilter()).toList(),
        outputFormat: outputFormat,
        quality: quality,
      ),
    );
  }
}

Future<Uint8List> manipulateImage(ManipulationInput i) async {
  Stopwatch? stopwatch;
  if (kDebugMode) {
    stopwatch = Stopwatch()..start();
  }
  final value = rustApi.manipulateImage(
    a: i,
  );
  if (kDebugMode) {
    log(stopwatch?.elapsed.toString() ?? '');
  }
  return value;
}