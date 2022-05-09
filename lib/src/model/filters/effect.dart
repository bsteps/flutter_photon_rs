import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_manipulation/src/bridge_generated.dart';
import 'package:image_manipulation/src/model/filters/filter.dart';
import 'package:image_manipulation/src/util.dart';

part 'effect.freezed.dart';

@freezed
class Effect with _$Effect, Filter {
  const Effect._();

  @Implements<Filter>()
  @Assert('contrast >= -255 && contrast <= 255')
  const factory Effect.adjustContrast({
    required double contrast,
  }) = _EffectAdjustContrast;
  @Implements<Filter>()
  const factory Effect.colorHorizontalStrips({
    required int length,
    @Default(Rgb(b: 0, g: 0, r: 0)) Rgb rgb,
  }) = _EffectColorHorizontalStrips;
  const factory Effect.colorVerticalStrips({
    required int length,
    @Default(Rgb(b: 0, g: 0, r: 0)) Rgb rgb,
  }) = _EffectColorVerticalStrips;
  const factory Effect.colorize() = _EffectColorize;
  const factory Effect.frostedGlass() = _EffectFrostedGlass;
  const factory Effect.halftone() = _EffectHalftone;
  const factory Effect.primary() = _EffectPrimary;
  const factory Effect.solarize() = _EffectSolarize;
  @Assert('brightness >= 0 && brightness <= 128')
  const factory Effect.incBrightness({
    required int brightness,
  }) = _EffectIncBrightness;
  @Assert('offset >= 0 && offset <= 2147483648')
  @Assert('channelIndex >= 0 && channelIndex <= 2')
  @Assert('channelIndex2 >= 0 && channelIndex2 <= 2')
  const factory Effect.multipleOffsets({
    required int offset,
    required int channelIndex,
    required int channelIndex2,
  }) = _EffectMultipleOffsets;
  @Assert('offset >= 0 && offset <= 2147483648')
  @Assert('channelIndex >= 0 && channelIndex <= 2')
  const factory Effect.offset({
    required int offset,
    required int channelIndex,
  }) = _EffectOffset;
  const factory Effect.oil({
    required int radius,
    required double intensity,
  }) = _EffectOil;
  @Assert('rOffset >= 0 && rOffset <= 2147483648')
  @Assert('gOffset >= 0 && gOffset <= 2147483648')
  @Assert('bOffset >= 0 && bOffset <= 2147483648')
  const factory Effect.tint({
    required int rOffset,
    required int gOffset,
    required int bOffset,
  }) = _EffectTint;

  @override
  String get name {
    return map(
      adjustContrast: (_) => "adjust_contrast",
      colorHorizontalStrips: (_) => "color_horizontal_strips",
      colorVerticalStrips: (_) => "color_vertical_strips",
      colorize: (_) => "colorize",
      frostedGlass: (_) => "frosted_glass",
      halftone: (_) => "halftone",
      incBrightness: (_) => "inc_brightness",
      multipleOffsets: (_) => "multiple_offsets",
      offset: (_) => "offset",
      oil: (_) => "oil",
      primary: (_) => "primary",
      solarize: (_) => "solarize",
      tint: (_) => "tint",
    );
  }

  @override
  String get fullName {
    return maybeMap(
      orElse: () {
        return name.split('_').map((e) => "${e[0].toUpperCase()}${e.substring(1)}").join(' ');
      },
      offset: (value) {
        switch (value.channelIndex) {
          case 0:
            return name.split('_').map((e) => "${e[0].toUpperCase()}${e.substring(1)}").join(' ') + " Red";
          case 1:
            return name.split('_').map((e) => "${e[0].toUpperCase()}${e.substring(1)}").join(' ') + " Green";
          case 2:
            return name.split('_').map((e) => "${e[0].toUpperCase()}${e.substring(1)}").join(' ') + " Blue";
          default:
            return name.split('_').map((e) => "${e[0].toUpperCase()}${e.substring(1)}").join(' ');
        }
      },
    );
  }

  @override
  PhotonFilter toPhotonFilter() {
    return maybeMap(
      orElse: () {
        return toPhotonFilterHelper(name: name);
      },
      tint: (value) {
        return toPhotonFilterHelper(
          name: value.name,
          value1: value.rOffset,
          value2: value.gOffset,
          value3: value.bOffset,
        );
      },
      oil: (value) {
        return toPhotonFilterHelper(
          name: value.name,
          value1: value.radius,
          value1Double: value.intensity,
        );
      },
      offset: (value) {
        return toPhotonFilterHelper(
          name: value.name,
          value1: value.channelIndex,
          value2: value.offset,
        );
      },
      multipleOffsets: (value) {
        return toPhotonFilterHelper(
          name: value.name,
          value1: value.offset,
          value2: value.channelIndex,
          value3: value.channelIndex2,
        );
      },
      incBrightness: (value) {
        return toPhotonFilterHelper(
          name: value.name,
          value1: value.brightness,
        );
      },
      colorHorizontalStrips: (value) {
        return toPhotonFilterHelper(
          name: value.name,
          value1: value.length,
          rgba: value.rgb.toRgba(),
        );
      },
      colorVerticalStrips: (value) {
        return toPhotonFilterHelper(
          name: value.name,
          value1: value.length,
          rgba: value.rgb.toRgba(),
        );
      },
      adjustContrast: (value) {
        return toPhotonFilterHelper(
          name: value.name,
          value1Double: value.contrast,
        );
      },
    );
  }
}
