import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_manipulation/src/bridge_generated.dart';
import 'package:image_manipulation/src/model/filters/filter.dart';
import 'package:image_manipulation/src/util.dart';

part 'preset_filter.freezed.dart';

@freezed
class PresetFilter with _$PresetFilter, Filter {
  const PresetFilter._();

  @Implements<Filter>()
  const factory PresetFilter.oceanic() = _PresetFilterOceanic;
  @Implements<Filter>()
  const factory PresetFilter.islands() = _PresetFilterIslands;
  @Implements<Filter>()
  const factory PresetFilter.marine() = _PresetFilterMarine;
  @Implements<Filter>()
  const factory PresetFilter.seagreen() = _PresetFilterSeagreen;
  @Implements<Filter>()
  const factory PresetFilter.flagblue() = _PresetFilterFlagblue;
  @Implements<Filter>()
  const factory PresetFilter.diamante() = _PresetFilterDiamante;
  @Implements<Filter>()
  const factory PresetFilter.liquid() = _PresetFilterLiquid;
  @Implements<Filter>()
  const factory PresetFilter.vintage() = _PresetFilterVintage;
  @Implements<Filter>()
  const factory PresetFilter.perfume() = _PresetFilterPerfume;
  @Implements<Filter>()
  const factory PresetFilter.serenity() = _PresetFilterSerenity;
  @Implements<Filter>()
  const factory PresetFilter.golden() = _PresetFilterGolden;
  @Implements<Filter>()
  const factory PresetFilter.pastelPink() = _PresetFilterPastelPink;
  @Implements<Filter>()
  const factory PresetFilter.cali() = _PresetFilterCali;
  @Implements<Filter>()
  const factory PresetFilter.dramatic() = _PresetFilterDramatic;
  @Implements<Filter>()
  const factory PresetFilter.firenze() = _PresetFilterFirenze;
  @Implements<Filter>()
  const factory PresetFilter.obsidian() = _PresetFilterObsidian;
  @Implements<Filter>()
  const factory PresetFilter.lofi() = _PresetFilterLofi;

  String get name {
    return map(
      oceanic: (_) => "oceanic",
      islands: (_) => "islands",
      marine: (_) => "marine",
      seagreen: (_) => "seagreen",
      flagblue: (_) => "flagblue",
      diamante: (_) => "diamante",
      liquid: (_) => "liquid",
      vintage: (_) => "vintage",
      perfume: (_) => "perfume",
      serenity: (_) => "serenity",
      golden: (_) => "golden",
      pastelPink: (_) => "pastel_pink",
      cali: (_) => "cali",
      dramatic: (_) => "dramatic",
      firenze: (_) => "firenze",
      obsidian: (_) => "obsidian",
      lofi: (_) => "lofi",
    );
  }

  String get fullName {
    return name.split('_').map((e) => "${e[0].toUpperCase()}${e.substring(1)}").join(' ');
  }

  @override
  PhotonFilter toPhotonFilter() {
    return toPhotonFilterHelper(name: name);
  }
}
