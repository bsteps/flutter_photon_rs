import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_photon/src/bridge_generated.dart';
import 'package:flutter_photon/src/model/filters/filter.dart';
import 'package:flutter_photon/src/util.dart';

part 'transform.freezed.dart';

enum SamplingFilter {
  nearest,
  triangle,
  catmullRom,
  gaussian,
  lanczos3,
}

@freezed
class Transform with _$Transform, Filter {
  const Transform._();

  @Implements<Filter>()
  const factory Transform.crop({
    required int x1,
    required int y1,
    required int x2,
    required int y2,
  }) = _TransformCrop;
  const factory Transform.flipH() = _TransformFlipH;
  const factory Transform.flipV() = _TransformFlipV;
  const factory Transform.paddingTop({
    required int padding,
    required Color color,
  }) = _TransformPaddingTop;
  const factory Transform.paddingRight({
    required int padding,
    required Color color,
  }) = _TransformPaddingRight;
  const factory Transform.paddingLeft({
    required int padding,
    required Color color,
  }) = _TransformPaddingLeft;
  const factory Transform.paddingBottom({
    required int padding,
    required Color color,
  }) = _TransformPaddingBottom;
  const factory Transform.paddingUniform({
    required int padding,
    required Color color,
  }) = _TransformPaddingUniform;
  const factory Transform.resize({
    required int height,
    required int width,
    @Default(SamplingFilter.nearest) SamplingFilter samplingFilter,
  }) = _TransformResize;

  @override
  String get name {
    return map(
      crop: (_) => "crop",
      flipH: (_) => "fliph",
      flipV: (_) => "flipv",
      paddingBottom: (_) => "padding_bottom",
      paddingRight: (_) => "padding_right",
      paddingLeft: (_) => "padding_left",
      paddingTop: (_) => "padding_top",
      paddingUniform: (_) => "padding_uniform",
      resize: (_) => "resize",
    );
  }

  @override
  String get fullName {
    return maybeMap(
      orElse: () {
        return name.split('_').map((e) => "${e[0].toUpperCase()}${e.substring(1)}").join(' ');
      },
      flipH: (_) => "Flip Horizontal",
      flipV: (_) => "Flip Vertical",
      resize: (value) {
        return "Resize (${value.samplingFilter.name.split('_').map((e) => "${e[0].toUpperCase()}${e.substring(1)}").join(' ')})";
      },
    );
  }

  @override
  PhotonFilter toPhotonFilter() {
    return maybeMap(
      orElse: () {
        return toPhotonFilterHelper(name: name);
      },
      resize: (value) {
        return toPhotonFilterHelper(
          name: value.name,
          value1: value.width.toInt(),
          value2: value.height.toInt(),
          value3: value.samplingFilter.index + 1,
        );
      },
      paddingBottom: (value) {
        return toPhotonFilterHelper(
          name: value.name,
          value1: value.padding,
          rgba: value.color.toRgba(),
        );
      },
      paddingTop: (value) {
        return toPhotonFilterHelper(
          name: value.name,
          value1: value.padding,
          rgba: value.color.toRgba(),
        );
      },
      paddingRight: (value) {
        return toPhotonFilterHelper(
          name: value.name,
          value1: value.padding,
          rgba: value.color.toRgba(),
        );
      },
      paddingLeft: (value) {
        return toPhotonFilterHelper(
          name: value.name,
          value1: value.padding,
          rgba: value.color.toRgba(),
        );
      },
      paddingUniform: (value) {
        return toPhotonFilterHelper(
          name: value.name,
          value1: value.padding,
          rgba: value.color.toRgba(),
        );
      },
      crop: (value) {
        return toPhotonFilterHelper(
          name: value.name,
          value1: value.x1,
          value2: value.y1,
          value3: value.x2,
          value4: value.y2,
        );
      },
    );
  }
}

extension ColorToRGBA on Color {
  Rgba toRgba() {
    return Rgba(r: red, g: green, b: blue, a: alpha);
  }
}
