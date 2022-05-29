import 'dart:ffi' as ffi;

import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_photon_rs/src/bridge_generated.dart';

ffi.DynamicLibrary openDynLib(String path) {
  if (Platform.environment.containsKey('FLUTTER_TEST')) {
    return ffi.DynamicLibrary.open("build/test/arm64-v8a/$path");
    // return ffi.DynamicLibrary.open(path);
  } else {
    return Platform.isIOS
        ? ffi.DynamicLibrary.process()
        : Platform.isMacOS
            ? ffi.DynamicLibrary.executable()
            : ffi.DynamicLibrary.open(path);
  }
}

PhotonFilter toPhotonFilterHelper({
  required String name,
  int value1 = 1,
  int value2 = 1,
  int value3 = 1,
  int value4 = 1,
  double value1Double = 0,
  Uint8List? image2Bytes,
  Rgba? rgba,
}) {
  return PhotonFilter(
    name: name,
    val1: value1,
    val2: value2,
    val3: value3,
    val4: value4,
    val1F: value1Double,
    image2Bytes: image2Bytes ?? Uint8List(0),
    rgba: rgba ??
        Rgba(
          r: 0,
          g: 0,
          b: 0,
          a: 0,
        ),
  );
}
