import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/generated/protos/group.pb.dart';
import 'package:protobuf_google/protobuf_google.dart';

/// Local data source for [Channel]s
@injectable
class ChannelLocalDataSource {
  final Box<Channel> _channelsBox;

  const ChannelLocalDataSource(this._channelsBox);

  Future<Empty> deleteChannel(String id) async {
    await _channelsBox.delete(id);
    return Empty();
  }

  Future<void> addChannel(Channel channel) async =>
      await _channelsBox.put(channel.id, channel);

  Future<Either<Channel, String>> getChannel(String id) async {
    var channel = _channelsBox.get(id);
    if (channel == null) {
      return left(channel!);
    }
    return right('Channel not found');
  }

  Future<Either<Stream<List<Channel>>, String>> getChannels(
      String group) async {
    var channels =
        _channelsBox.values.where((element) => element.group == group).toList();
    if (channels.isNotEmpty) {
      return left(Stream.value(channels).asBroadcastStream());
    }
    return right('Channels not found');
  }

  Future<void> addChannels(List<Channel> channels) async {
    for (var channel in channels) {
      await addChannel(channel);
    }
  }
}
