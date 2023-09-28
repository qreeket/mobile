import 'package:api_utils/api_utils.dart';
import 'package:mobile/generated/protos/group.pb.dart';
import 'package:protobuf_google/protobuf_google.dart';

abstract class BaseGroupInviteRepository {
  FutureEither<Empty, String> inviteUserToGroup(String groupId, String userId);

  FutureEither<Empty, String> acceptGroupInvite(String groupId);

  FutureEither<Empty, String> declineGroupInvite(String groupId);

  FutureEither<Stream<List<GroupInvite>>, String> getGroupInvites();
}
