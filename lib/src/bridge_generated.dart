// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`.

// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, prefer_single_quotes, prefer_const_constructors

import 'dart:convert';
import 'dart:typed_data';

import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'dart:ffi' as ffi;

abstract class ImageManipulation {
  Future<Uint8List> manipulateImage(
      {required ManipulationInput a, dynamic hint});
}

class ManipulationInput {
  final Uint8List originalBytes;
  final List<PhotonFilter> filters;
  final OutputFormat outputFormat;
  final int quality;

  ManipulationInput({
    required this.originalBytes,
    required this.filters,
    required this.outputFormat,
    required this.quality,
  });
}

enum OutputFormat {
  Png,
  Jpeg,
  Gif,
}

class PhotonFilter {
  final String name;
  final int val1;
  final int val2;
  final int val3;
  final int val4;
  final Uint8List image2Bytes;
  final Rgba rgba;
  final double val1F;

  PhotonFilter({
    required this.name,
    required this.val1,
    required this.val2,
    required this.val3,
    required this.val4,
    required this.image2Bytes,
    required this.rgba,
    required this.val1F,
  });
}

class Rgba {
  final int r;
  final int g;
  final int b;
  final int a;

  Rgba({
    required this.r,
    required this.g,
    required this.b,
    required this.a,
  });
}

class ImageManipulationImpl extends FlutterRustBridgeBase<ImageManipulationWire>
    implements ImageManipulation {
  factory ImageManipulationImpl(ffi.DynamicLibrary dylib) =>
      ImageManipulationImpl.raw(ImageManipulationWire(dylib));

  ImageManipulationImpl.raw(ImageManipulationWire inner) : super(inner);

  Future<Uint8List> manipulateImage(
          {required ManipulationInput a, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_manipulate_image(
            port_, _api2wire_box_autoadd_manipulation_input(a)),
        parseSuccessData: _wire2api_ZeroCopyBuffer_Uint8List,
        constMeta: const FlutterRustBridgeTaskConstMeta(
          debugName: "manipulate_image",
          argNames: ["a"],
        ),
        argValues: [a],
        hint: hint,
      ));

  // Section: api2wire
  ffi.Pointer<wire_uint_8_list> _api2wire_String(String raw) {
    return _api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  ffi.Pointer<wire_ManipulationInput> _api2wire_box_autoadd_manipulation_input(
      ManipulationInput raw) {
    final ptr = inner.new_box_autoadd_manipulation_input();
    _api_fill_to_wire_manipulation_input(raw, ptr.ref);
    return ptr;
  }

  ffi.Pointer<wire_Rgba> _api2wire_box_rgba(Rgba raw) {
    final ptr = inner.new_box_rgba();
    _api_fill_to_wire_rgba(raw, ptr.ref);
    return ptr;
  }

  double _api2wire_f64(double raw) {
    return raw;
  }

  int _api2wire_i64(int raw) {
    return raw;
  }

  ffi.Pointer<wire_list_photon_filter> _api2wire_list_photon_filter(
      List<PhotonFilter> raw) {
    final ans = inner.new_list_photon_filter(raw.length);
    for (var i = 0; i < raw.length; ++i) {
      _api_fill_to_wire_photon_filter(raw[i], ans.ref.ptr[i]);
    }
    return ans;
  }

  int _api2wire_output_format(OutputFormat raw) {
    return raw.index;
  }

  int _api2wire_u8(int raw) {
    return raw;
  }

  ffi.Pointer<wire_uint_8_list> _api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }

  // Section: api_fill_to_wire

  void _api_fill_to_wire_box_autoadd_manipulation_input(
      ManipulationInput apiObj, ffi.Pointer<wire_ManipulationInput> wireObj) {
    _api_fill_to_wire_manipulation_input(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_rgba(Rgba apiObj, ffi.Pointer<wire_Rgba> wireObj) {
    _api_fill_to_wire_rgba(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_manipulation_input(
      ManipulationInput apiObj, wire_ManipulationInput wireObj) {
    wireObj.original_bytes = _api2wire_uint_8_list(apiObj.originalBytes);
    wireObj.filters = _api2wire_list_photon_filter(apiObj.filters);
    wireObj.output_format = _api2wire_output_format(apiObj.outputFormat);
    wireObj.quality = _api2wire_u8(apiObj.quality);
  }

  void _api_fill_to_wire_photon_filter(
      PhotonFilter apiObj, wire_PhotonFilter wireObj) {
    wireObj.name = _api2wire_String(apiObj.name);
    wireObj.val1 = _api2wire_i64(apiObj.val1);
    wireObj.val2 = _api2wire_i64(apiObj.val2);
    wireObj.val3 = _api2wire_i64(apiObj.val3);
    wireObj.val4 = _api2wire_i64(apiObj.val4);
    wireObj.image2_bytes = _api2wire_uint_8_list(apiObj.image2Bytes);
    wireObj.rgba = _api2wire_box_rgba(apiObj.rgba);
    wireObj.val1f = _api2wire_f64(apiObj.val1F);
  }

  void _api_fill_to_wire_rgba(Rgba apiObj, wire_Rgba wireObj) {
    wireObj.r = _api2wire_u8(apiObj.r);
    wireObj.g = _api2wire_u8(apiObj.g);
    wireObj.b = _api2wire_u8(apiObj.b);
    wireObj.a = _api2wire_u8(apiObj.a);
  }
}

// Section: wire2api
Uint8List _wire2api_ZeroCopyBuffer_Uint8List(dynamic raw) {
  return raw as Uint8List;
}

int _wire2api_u8(dynamic raw) {
  return raw as int;
}

Uint8List _wire2api_uint_8_list(dynamic raw) {
  return raw as Uint8List;
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.

/// generated by flutter_rust_bridge
class ImageManipulationWire implements FlutterRustBridgeWireBase {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  ImageManipulationWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  ImageManipulationWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void wire_manipulate_image(
    int port_,
    ffi.Pointer<wire_ManipulationInput> a,
  ) {
    return _wire_manipulate_image(
      port_,
      a,
    );
  }

  late final _wire_manipulate_imagePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64,
              ffi.Pointer<wire_ManipulationInput>)>>('wire_manipulate_image');
  late final _wire_manipulate_image = _wire_manipulate_imagePtr
      .asFunction<void Function(int, ffi.Pointer<wire_ManipulationInput>)>();

  ffi.Pointer<wire_ManipulationInput> new_box_autoadd_manipulation_input() {
    return _new_box_autoadd_manipulation_input();
  }

  late final _new_box_autoadd_manipulation_inputPtr = _lookup<
          ffi.NativeFunction<ffi.Pointer<wire_ManipulationInput> Function()>>(
      'new_box_autoadd_manipulation_input');
  late final _new_box_autoadd_manipulation_input =
      _new_box_autoadd_manipulation_inputPtr
          .asFunction<ffi.Pointer<wire_ManipulationInput> Function()>();

  ffi.Pointer<wire_Rgba> new_box_rgba() {
    return _new_box_rgba();
  }

  late final _new_box_rgbaPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_Rgba> Function()>>(
          'new_box_rgba');
  late final _new_box_rgba =
      _new_box_rgbaPtr.asFunction<ffi.Pointer<wire_Rgba> Function()>();

  ffi.Pointer<wire_list_photon_filter> new_list_photon_filter(
    int len,
  ) {
    return _new_list_photon_filter(
      len,
    );
  }

  late final _new_list_photon_filterPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_list_photon_filter> Function(
              ffi.Int32)>>('new_list_photon_filter');
  late final _new_list_photon_filter = _new_list_photon_filterPtr
      .asFunction<ffi.Pointer<wire_list_photon_filter> Function(int)>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list(
    int len,
  ) {
    return _new_uint_8_list(
      len,
    );
  }

  late final _new_uint_8_listPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_uint_8_list> Function(
              ffi.Int32)>>('new_uint_8_list');
  late final _new_uint_8_list = _new_uint_8_listPtr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  void free_WireSyncReturnStruct(
    WireSyncReturnStruct val,
  ) {
    return _free_WireSyncReturnStruct(
      val,
    );
  }

  late final _free_WireSyncReturnStructPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturnStruct)>>(
          'free_WireSyncReturnStruct');
  late final _free_WireSyncReturnStruct = _free_WireSyncReturnStructPtr
      .asFunction<void Function(WireSyncReturnStruct)>();

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();
}

class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

class wire_Rgba extends ffi.Struct {
  @ffi.Uint8()
  external int r;

  @ffi.Uint8()
  external int g;

  @ffi.Uint8()
  external int b;

  @ffi.Uint8()
  external int a;
}

class wire_PhotonFilter extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> name;

  @ffi.Int64()
  external int val1;

  @ffi.Int64()
  external int val2;

  @ffi.Int64()
  external int val3;

  @ffi.Int64()
  external int val4;

  external ffi.Pointer<wire_uint_8_list> image2_bytes;

  external ffi.Pointer<wire_Rgba> rgba;

  @ffi.Double()
  external double val1f;
}

class wire_list_photon_filter extends ffi.Struct {
  external ffi.Pointer<wire_PhotonFilter> ptr;

  @ffi.Int32()
  external int len;
}

class wire_ManipulationInput extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> original_bytes;

  external ffi.Pointer<wire_list_photon_filter> filters;

  @ffi.Int32()
  external int output_format;

  @ffi.Uint8()
  external int quality;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<ffi.Uint8 Function(DartPort, ffi.Pointer<ffi.Void>)>>;
typedef DartPort = ffi.Int64;
