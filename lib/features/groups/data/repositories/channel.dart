import 'package:api_utils/api_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/core/network/network.info.dart';
import 'package:mobile/features/groups/data/local/data_sources/channel.dart';
import 'package:mobile/features/groups/data/remote/data_sources/channel.dart';
import 'package:mobile/features/groups/domain/repositories/channel.dart';
import 'package:mobile/generated/protos/group.pb.dart';
import 'package:protobuf_google/protobuf_google.dart';
import 'package:shared_utils/shared_utils.dart';

@Injectable(as: BaseChannelRepository)
class ChannelRepository implements BaseChannelRepository {
  final NetworkInfo _networkInfo;
  final ChannelRemoteDataSource _remoteDataSource;
  final ChannelLocalDataSource _localDataSource;

  const ChannelRepository(
      this._networkInfo, this._remoteDataSource, this._localDataSource);

  @override
  FutureEither<Channel, String> createChannel({
    required String name,
    required String description,
    required String group,
    required bool isPublic,
  }) async {
    if (await _networkInfo.isConnected) {
      var either = await _remoteDataSource.createChannel(
          name: name,
          description: description,
          group: group,
          isPublic: isPublic);
      return either.fold(
        (channel) async {
          await _localDataSource.addChannel(channel);
          return left(channel);
        },
        (error) => right(error),
      );
    }
    return right(
        'Unable to create channel at this time. Please try again later.');
  }

  @override
  FutureEither<Channel, String> getChannel(String id) async {
    if (await _networkInfo.isConnected) {
      var either = await _remoteDataSource.getChannel(id);
      either.fold(
        (channel) async => await _localDataSource.addChannel(channel),
        (error) => logger.e(error),
      );
    }
    return await _localDataSource.getChannel(id);
  }

  @override
  FutureEither<Empty, String> deleteChannel(String id) async {
    if (await _networkInfo.isConnected) {
      var either = await _remoteDataSource.deleteChannel(id);
      either.fold(
        (empty) => logger.d('Channel deleted'),
        (error) => right(error),
      );
    }
    var empty = await _localDataSource.deleteChannel(id);
    return left(empty);
  }

  @override
  FutureEither<Channel, String> updateChannel(Channel request) async {
    if (await _networkInfo.isConnected) {
      var either = await _remoteDataSource.updateChannel(request);
      either.fold(
        (channel) async => await _localDataSource.addChannel(channel),
        (error) => logger.e(error),
      );
    } else {
      await _localDataSource.addChannel(request);
    }
    return await _localDataSource.getChannel(request.id);
  }

  @override
  FutureEither<Stream<List<Channel>>, String> getChannels(String group) async {
    if (await _networkInfo.isConnected) {
      var either = await _remoteDataSource.getChannels(group);
      var stream = either.fold(
          (stream) => stream, (error) => const Stream<List<Channel>>.empty());
      stream.listen((event) {
        if (event.isEmpty) return;
        _localDataSource.addChannels(event);
      });
    }
    return await _localDataSource.getChannels(group);
  }
}
