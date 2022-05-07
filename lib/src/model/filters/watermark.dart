import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_manipulation/src/bridge_generated.dart';
import 'package:image_manipulation/src/model/filters/filter.dart';
import 'package:image_manipulation/src/util.dart';

part 'watermark.freezed.dart';

@freezed
class Watermark with _$Watermark, Filter {
  const Watermark._();

  @Implements<Filter>()
  const factory Watermark.bytes({
    required int x,
    required int y,
    required Uint8List bytes,
  }) = _WatermarkWatermark;

  @override
  String get name {
    return map(
      bytes: (_) => "watermark",
    );
  }

  @override
  String get fullName {
    return name.split('_').map((e) => "${e[0].toUpperCase()}${e.substring(1)}").join(' ');
  }

  @override
  PhotonFilter toPhotonFilter() {
    return toPhotonFilterHelper(
      name: name,
      value1: x,
      value2: y,
      watermarkBytes: bytes,
    );
  }
}
