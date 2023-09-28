import 'package:api_utils/api_utils.dart';
import 'package:mobile/generated/protos/group.pb.dart';
import 'package:protobuf_google/protobuf_google.dart';

abstract class BaseChannelSubscriptionRepository {
  FutureEither<Empty, String> subscribeToChannel(String channelId);

  FutureEither<Stream<List<ChannelSubscription>>, String>
      getUserSubscriptions();

  FutureEither<Empty, String> unsubscribeFromChannel(String channelId);
}
