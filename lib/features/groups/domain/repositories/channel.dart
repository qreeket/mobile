import 'package:api_utils/api_utils.dart';
import 'package:mobile/generated/protos/group.pb.dart';
import 'package:protobuf_google/protobuf_google.dart';

abstract class BaseChannelRepository {
  FutureEither<Channel, String> createChannel({
    required String name,
    required String description,
    required String group,
    required bool isPublic,
  });

  FutureEither<Stream<List<Channel>>, String> getChannels(String group);

  FutureEither<Channel, String> getChannel(String id);

  FutureEither<Channel, String> updateChannel(Channel request);

  FutureEither<Empty, String> deleteChannel(String id);
}
