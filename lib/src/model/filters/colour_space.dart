import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_manipulation/src/bridge_generated.dart';
import 'package:image_manipulation/src/model/filters/filter.dart';
import 'package:image_manipulation/src/util.dart';

part 'colour_space.freezed.dart';

enum ColourSpaceMode {
  saturate,
  desaturate,
  shift_hue,
  darken,
  lighten,
}

@freezed
class ColourSpace with _$ColourSpace, Filter {
  const ColourSpace._();

  @Implements<Filter>()
  @Assert('level >= 0 && level <= 1')
  const factory ColourSpace.hsl({
    required ColourSpaceMode mode,
    required double level,
  }) = _ColourHsl;
  const factory ColourSpace.hsv({
    required ColourSpaceMode mode,
    required double level,
  }) = _ColourHsv;
  const factory ColourSpace.lch({
    required ColourSpaceMode mode,
    required double level,
  }) = _ColourLch;
  const factory ColourSpace.mixWithColour({
    required Rgb rgb,
    required double opacity,
  }) = _ColourMixWithColour;

  @override
  String get name {
    return map(
      hsl: (v) => "hsl_${v.mode.name}",
      hsv: (v) => "hsv_${v.mode.name}",
      lch: (v) => "lch_${v.mode.name}",
      mixWithColour: (v) => "mix_with_colour",
    );
  }

  @override
  String get fullName {
    return name.split('_').map((e) => "${e[0].toUpperCase()}${e.substring(1)}").join(' ');
  }

  @override
  PhotonFilter toPhotonFilter() {
    return maybeMap(
      orElse: () {
        return toPhotonFilterHelper(name: name);
      },
      mixWithColour: (value) {
        return toPhotonFilterHelper(
          name: value.name,
          value1Double: value.opacity,
          rgba: value.rgb.toRgba(),
        );
      },
      hsl: (value) {
        return toPhotonFilterHelper(
          name: value.name,
          value1Double: value.level,
        );
      },
      hsv: (value) {
        return toPhotonFilterHelper(
          name: value.name,
          value1Double: value.level,
        );
      },
      lch: (value) {
        return toPhotonFilterHelper(
          name: value.name,
          value1Double: value.level,
        );
      },
    );
  }
}
