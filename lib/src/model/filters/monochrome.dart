import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_photon/src/bridge_generated.dart';
import 'package:flutter_photon/src/model/filters/filter.dart';
import 'package:flutter_photon/src/util.dart';

part 'monochrome.freezed.dart';

@freezed
class Monochrome with _$Monochrome, Filter {
  const Monochrome._();

  @Implements<Filter>()
  const factory Monochrome.sepia() = _MonochromeSepia;
  @Implements<Filter>()
  const factory Monochrome.blueGrayscale() = _MonochromeBlueGrayscale;
  @Implements<Filter>()
  const factory Monochrome.greenGrayscale() = _MonochromeGreenGrayscale;
  @Implements<Filter>()
  const factory Monochrome.redGrayscale() = _MonochromeRedGrayscale;
  @Implements<Filter>()
  const factory Monochrome.decomposeMax() = _MonochromeDecomposeMax;
  @Implements<Filter>()
  const factory Monochrome.decomposeMin() = _MonochromeDecomposeMin;
  @Implements<Filter>()
  const factory Monochrome.grayscale() = _MonochromeGrayscale;
  @Implements<Filter>()
  const factory Monochrome.grayscaleHumanCorrection() = _MonochromeGrayscaleHumanCorrection;
  @Implements<Filter>()
  const factory Monochrome.grayscaleShades(int value) = _MonochromeGrayscaleShades;
  @Implements<Filter>()
  const factory Monochrome.threshold(int value) = _MonochromeThreshold;

  @override
  String get name {
    return map(
      sepia: (value) {
        return 'sepia';
      },
      grayscale: (value) {
        return 'grayscale';
      },
      grayscaleHumanCorrection: (value) {
        return 'grayscale_human_correction';
      },
      grayscaleShades: (value) {
        return 'grayscale_human_correction';
      },
      threshold: (value) {
        return 'threshold';
      },
      blueGrayscale: (value) {
        return 'blue_grayscale';
      },
      greenGrayscale: (value) {
        return 'green_grayscale';
      },
      redGrayscale: (value) {
        return 'red_grayscale';
      },
      decomposeMax: (value) {
        return 'decompose_max';
      },
      decomposeMin: (value) {
        return 'decompose_min';
      },
    );
  }

  @override
  String get fullName {
    return name.split('_').map((e) => "${e[0].toUpperCase()}${e.substring(1)}").join(' ');
  }

  @override
  PhotonFilter toPhotonFilter() {
    return map(
      sepia: (value) {
        return toPhotonFilterHelper(name: name);
      },
      grayscale: (value) {
        return toPhotonFilterHelper(name: name);
      },
      grayscaleHumanCorrection: (value) {
        return toPhotonFilterHelper(name: name);
      },
      grayscaleShades: (value) {
        return toPhotonFilterHelper(name: name, value1: value.value);
      },
      threshold: (value) {
        return toPhotonFilterHelper(name: name, value1: value.value);
      },
      blueGrayscale: (value) {
        return toPhotonFilterHelper(name: name);
      },
      greenGrayscale: (value) {
        return toPhotonFilterHelper(name: name);
      },
      redGrayscale: (value) {
        return toPhotonFilterHelper(name: name);
      },
      decomposeMax: (value) {
        return toPhotonFilterHelper(name: name);
      },
      decomposeMin: (value) {
        return toPhotonFilterHelper(name: name);
      },
    );
  }
}
