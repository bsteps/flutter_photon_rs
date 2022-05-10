import 'dart:developer';
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_manipulation/src/bridge_generated.dart';
import 'package:image_manipulation/src/model/filters/filter.dart';
import 'package:image_manipulation/src/util.dart';

part 'multiple.freezed.dart';

@freezed
class Rgb with _$Rgb {
  const Rgb._();

  @Assert("r <= 255 && r >= 0")
  @Assert("g <= 255 && g >= 0")
  @Assert("b <= 255 && b >= 0")
  const factory Rgb({
    required int r,
    required int g,
    required int b,
  }) = _Rgb;

  Rgba toRgba() {
    return Rgba(r: r, g: g, b: b, a: 0);
  }
}

enum BlendMode {
  overlay,
  over,
  atop,
  xor,
  plus,
  multiply,
  burn,
  difference,
  soft_light,
  hard_light,
  dodge,
  exclusion,
  lighten,
  darken,
}

@freezed
class Multiple with _$Multiple, Filter {
  const Multiple._();

  @Implements<Filter>()
  const factory Multiple.watermarkFromBytes({
    required int x,
    required int y,
    required Uint8List bytes,
  }) = _MultipleWatermarkFromBytes;
  @Implements<Filter>()
  const factory Multiple.applyGradient() = _MultipleApplyGradient;
  const factory Multiple.replaceBackground({
    required Uint8List bytes,
    required Rgb rgb,
  }) = _MultipleReplaceBackground;
  const factory Multiple.blend({
    required Uint8List bytes,
    required BlendMode blendMode,
  }) = _MultipleBlend;

  @override
  String get name {
    return map(
      watermarkFromBytes: (_) => "watermark",
      applyGradient: (_) => 'apply_gradient',
      replaceBackground: (_) => 'replace_background',
      blend: (value) => 'blend_${value.blendMode.name}',
    );
  }

  @override
  String get fullName {
    return name.split('_').map((e) => "${e[0].toUpperCase()}${e.substring(1)}").join(' ');
  }

  @override
  PhotonFilter toPhotonFilter() {
    return maybeMap(
      watermarkFromBytes: (value) {
        return toPhotonFilterHelper(
          name: value.name,
          value1: value.x,
          value2: value.y,
          image2Bytes: value.bytes,
        );
      },
      replaceBackground: (value) {
        return toPhotonFilterHelper(
          name: value.name,
          image2Bytes: value.bytes,
          rgba: value.rgb.toRgba(),
        );
      },
      blend: (value) {
        return toPhotonFilterHelper(
          name: value.name,
          image2Bytes: value.bytes,
        );
      },
      orElse: () {
        return toPhotonFilterHelper(
          name: name,
        );
      },
    );
  }
}
