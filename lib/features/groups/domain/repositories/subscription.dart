import 'package:dartz/dartz.dart';
import 'package:mobile/generated/protos/group.pb.dart';
import 'package:protobuf_google/protobuf_google.dart';

abstract class BaseChannelSubscriptionRepository {
  Future<Either<Empty, String>> subscribeToChannel(String channelId);

  Future<Either<Stream<List<ChannelSubscription>>, String>>
      getUserSubscriptions();

  Future<Either<Empty, String>> unsubscribeFromChannel(String channelId);
}
