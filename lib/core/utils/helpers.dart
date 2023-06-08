import 'package:mobile/generated/protos/group.pb.dart';

List<Channel> segregateChannelByType(ChannelType type, Group group) {
  final channels = List<Channel>.empty(growable: true);
  for (final channel in group.channels) {
    if (channel.type == type) {
      channels.add(channel);
    }
  }
  return channels;
}
