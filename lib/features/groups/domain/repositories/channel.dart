import 'package:dartz/dartz.dart';
import 'package:mobile/generated/protos/group.pb.dart';
import 'package:protobuf_google/protobuf_google.dart';

abstract class BaseChannelRepository {
  Future<Either<Channel, String>> createChannel({
    required String name,
    required String description,
    required String group,
    required bool isPublic,
  });

  Future<Either<Stream<List<Channel>>, String>> getChannels(String group);

  Future<Either<Channel, String>> getChannel(String id);

  Future<Either<Channel, String>> updateChannel(Channel request);

  Future<Either<Empty, String>> deleteChannel(String id);
}
