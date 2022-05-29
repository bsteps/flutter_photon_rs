import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter_photon_rs/src/bridge_generated.dart';
import 'package:flutter_photon_rs/src/model/filters/filter.dart';
import 'package:flutter_photon_rs/src/util.dart';

const base = 'flutter_photon_rs';
final path = Platform.isWindows ? '$base.dll' : 'lib$base.so';

final dylib = openDynLib(path);
final rustApi = FlutterPhotonRsImpl(dylib);

class Photon {
  static Future<Uint8List> process({
    required Uint8List bytes,
    List<Filter> filters = const [],
    OutputFormat outputFormat = OutputFormat.Jpeg,
    int quality = 100,
  }) async {
    // assert((thresholdAmount <= 255 && thresholdAmount >= 0) || !threshold, "threshold should be between 0 and 255.");
    assert(
        outputFormat != OutputFormat.Jpeg || (quality >= 0 && quality <= 100), "quality should be between 0 and 100");

    log(filters.toString());
    Stopwatch? stopwatch;

    if (kDebugMode) {
      stopwatch = Stopwatch()..start();
    }
    // final data = await manipulateImage(ManipulationInput(
    //   originalBytes: bytes,
    //   filters: filters.map((e) => e.toPhotonFilter()).toList(),
    //   outputFormat: outputFormat,
    //   quality: quality,
    // ));
    final data = await compute(
      manipulateImage,
      ManipulationInput(
        originalBytes: bytes,
        filters: filters.map((e) => e.toPhotonFilter()).toList(),
        outputFormat: outputFormat,
        quality: quality,
      ),
    );

    if (kDebugMode && stopwatch != null) {
      log("flutter_photon_rs: ${stopwatch.elapsed.inMilliseconds}ms");
    }
    return data;
  }
}

Future<Uint8List> manipulateImage(ManipulationInput i) async {
  Stopwatch? stopwatch;
  if (kDebugMode) {
    stopwatch = Stopwatch()..start();
  }
  final value = await rustApi.manipulateImage(
    a: i,
  );
  if (kDebugMode && stopwatch != null) {
    log("flutter_photon_rs 2: ${stopwatch.elapsed.inMilliseconds}ms");
  }
  return value;
}
