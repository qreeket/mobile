import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/core/network/error.handler.dart';
import 'package:mobile/features/common/domain/repositories/security.dart';
import 'package:mobile/generated/protos/group.pb.dart';
import 'package:mobile/generated/protos/group_service.pbgrpc.dart';
import 'package:protobuf_google/protobuf_google.dart';

/// Remote data source for [Channel]s
@injectable
class ChannelRemoteDataSource {
  final GroupChannelServiceClient _channelClient;
  final BaseSecurityRepository _securityRepository;

  const ChannelRemoteDataSource(this._channelClient, this._securityRepository);

  Future<Either<Channel, String>> getChannel(String id) async =>
      runWithGrpcUnaryZonedGuarded(run: () async {
        var channel = await _channelClient.getChannel(StringValue(value: id));
        return channel;
      });

  Future<Either<Channel, String>> createChannel({
    required String name,
    required String description,
    required String group,
    required bool isPublic,
  }) async =>
      runWithGrpcUnaryZonedGuarded(run: () async {
        var request = CreateChannelRequest(
          name: name,
          description: description,
          group: group,
          owner: await _securityRepository.getUserId(),
          type: isPublic ? ChannelType.public : ChannelType.private,
        );
        var channel = await _channelClient.createChannel(request);
        return channel;
      });

  Future<Either<Empty, String>> deleteChannel(String id) async =>
      runWithGrpcUnaryZonedGuarded(run: () async {
        var channel =
            await _channelClient.deleteChannel(StringValue(value: id));
        return channel;
      });

  Future<Either<Channel, String>> updateChannel(Channel request) async =>
      runWithGrpcUnaryZonedGuarded(
          run: () async => await _channelClient.updateChannel(request));

  Future<Either<Stream<List<Channel>>, String>> getChannels(
          String group) async =>
      runWithGrpcStreamZonedGuarded(
          run: () async => _channelClient
              .getChannelsForGroup(StringValue(value: group))
              .map((event) => event.channels));
}