import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_manipulation/src/bridge_generated.dart';
import 'package:image_manipulation/src/model/filters/filter.dart';
import 'package:image_manipulation/src/util.dart';

part 'channel.freezed.dart';

@freezed
class Channel with _$Channel, Filter {
  const Channel._();

  @Implements<Filter>()
  const factory Channel.incRedChannel() = _ChannelIncRedChannel;
  @Implements<Filter>()
  const factory Channel.incBlueChannel() = _ChannelIncBlueChannel;
  @Implements<Filter>()
  const factory Channel.incGreenChannel() = _ChannelIncGreenChannel;
  @Implements<Filter>()
  const factory Channel.inc2Channels() = _ChannelInc2Channels;
  @Implements<Filter>()
  const factory Channel.swapRGChannels() = _ChannelSwapRGChannels;
  @Implements<Filter>()
  const factory Channel.swapRBChannels() = _ChannelSwapRBChannels;
  @Implements<Filter>()
  const factory Channel.swapBGChannels() = _ChannelSwapBGChannels;
  @Implements<Filter>()
  const factory Channel.removeRedChannel() = _ChannelRemoveRedChannel;
  @Implements<Filter>()
  const factory Channel.removeGreenChannel() = _ChannelRemoveGreenChannel;
  @Implements<Filter>()
  const factory Channel.removeBlueChannel() = _ChannelRemoveBlueChannel;
  @Implements<Filter>()
  const factory Channel.decBlueChannel() = _ChannelDecBlueChannel;
  @Implements<Filter>()
  const factory Channel.decRedChannel() = _ChannelDecRedChannel;
  @Implements<Filter>()
  const factory Channel.decGreenChannel() = _ChannelDecGreenChannel;

  @override
  String get name {
    return map(
      incBlueChannel: (value) => 'alter_channel',
      incRedChannel: (value) => 'alter_channel',
      incGreenChannel: (value) => 'alter_channel',
      inc2Channels: (value) => 'alter_channel',
      decBlueChannel: (value) => 'alter_channel',
      decRedChannel: (value) => 'alter_channel',
      decGreenChannel: (value) => 'alter_channel',
      swapRGChannels: (value) => 'swap_channels',
      swapRBChannels: (value) => 'swap_channels',
      swapBGChannels: (value) => 'swap_channels',
      removeRedChannel: (value) => 'remove_red_channel',
      removeGreenChannel: (value) => 'remove_green_channel',
      removeBlueChannel: (value) => 'remove_blue_channel',
    );
  }

  @override
  String get fullName {
    return maybeMap(
      incBlueChannel: (value) => 'Inc Blue Channel',
      incRedChannel: (value) => 'Inc Red Channel',
      incGreenChannel: (value) => 'Inc Green Channel',
      inc2Channels: (value) => 'Inc 2 Channels',
      decBlueChannel: (value) => 'Dec Blue Channel',
      decRedChannel: (value) => 'Dec Red Channel',
      decGreenChannel: (value) => 'Dec Green Channel',
      swapRBChannels: (value) => 'Swap R+B Channels',
      swapRGChannels: (value) => 'Swap R+G Channels',
      swapBGChannels: (value) => 'Swap B+G Channels',
      orElse: () {
        return name.split('_').map((e) => "${e[0].toUpperCase()}${e.substring(1)}").join(' ');
      },
    );
  }

  @override
  PhotonFilter toPhotonFilter() {
    return maybeMap(
      incBlueChannel: (value) {
        return toPhotonFilterHelper(name: name, value1: 0, value2: 30);
      },
      incRedChannel: (value) {
        return toPhotonFilterHelper(name: name, value1: 2, value2: 30);
      },
      incGreenChannel: (value) {
        return toPhotonFilterHelper(name: name, value1: 1, value2: 30);
      },
      inc2Channels: (value) {
        return toPhotonFilterHelper(name: name, value1: 1, value2: 30);
      },
      decRedChannel: (value) {
        return toPhotonFilterHelper(name: name, value1: 0, value2: -30);
      },
      decBlueChannel: (value) {
        return toPhotonFilterHelper(name: name, value1: 2, value2: -30);
      },
      decGreenChannel: (value) {
        return toPhotonFilterHelper(name: name, value1: 1, value2: -30);
      },
      swapRBChannels: (value) {
        return toPhotonFilterHelper(name: name, value1: 0, value2: 2);
      },
      swapRGChannels: (value) {
        return toPhotonFilterHelper(name: name, value1: 0, value2: 1);
      },
      swapBGChannels: (value) {
        return toPhotonFilterHelper(name: name, value1: 1, value2: 2);
      },
      removeBlueChannel: (value) {
        return toPhotonFilterHelper(name: name, value1: 250);
      },
      removeGreenChannel: (value) {
        return toPhotonFilterHelper(name: name, value1: 250);
      },
      removeRedChannel: (value) {
        return toPhotonFilterHelper(name: name, value1: 250);
      },
      orElse: () {
        return toPhotonFilterHelper(
          name: name,
        );
      },
    );
  }
}
