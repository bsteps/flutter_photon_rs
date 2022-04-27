import 'dart:ffi' as ffi;

import 'dart:io';

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
