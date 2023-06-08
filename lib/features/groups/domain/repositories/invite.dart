import 'package:dartz/dartz.dart';
import 'package:mobile/generated/protos/group.pb.dart';
import 'package:protobuf_google/protobuf_google.dart';

abstract class BaseGroupInviteRepository {
  Future<Either<Empty, String>> inviteUserToGroup(
      String groupId, String userId);

  Future<Either<Empty, String>> acceptGroupInvite(String groupId);

  Future<Either<Empty, String>> declineGroupInvite(String groupId);

  Future<Either<Stream<List<GroupInvite>>, String>> getGroupInvites();
}
