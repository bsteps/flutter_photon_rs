import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_photon_rs/src/bridge_generated.dart';
import 'package:flutter_photon_rs/src/model/filters/filter.dart';
import 'package:flutter_photon_rs/src/util.dart';

part 'tint.freezed.dart';

@freezed
class Tint with _$Tint, Filter {
  const Tint._();

  @Implements<Filter>()
  const factory Tint.radio() = _TintRadio;
  @Implements<Filter>()
  const factory Tint.twenties() = _TintTwenties;
  @Implements<Filter>()
  const factory Tint.rosetint() = _TintRosetint;
  @Implements<Filter>()
  const factory Tint.mauve() = _TintMauve;
  @Implements<Filter>()
  const factory Tint.bluechrome() = _TintBluechrome;

  @override
  String get name {
    return map(
      radio: (_) => "radio",
      twenties: (_) => "twenties",
      rosetint: (_) => "rosetint",
      mauve: (_) => "mauve",
      bluechrome: (_) => "bluechrome",
    );
  }

  @override
  String get fullName {
    return name.split('_').map((e) => "${e[0].toUpperCase()}${e.substring(1)}").join(' ');
  }

  @override
  PhotonFilter toPhotonFilter() {
    return toPhotonFilterHelper(name: name);
  }
}
