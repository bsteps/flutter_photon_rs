import 'package:image_manipulation/src/bridge_generated.dart';

export './monochrome.dart';
export './preset_filter.dart';
export './tint.dart';
export './channel.dart';

abstract class Filter {
  String get fullName;
  String get name;

  PhotonFilter toPhotonFilter();
}
