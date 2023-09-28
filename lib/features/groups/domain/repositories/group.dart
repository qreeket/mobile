import 'dart:io';

import 'package:api_utils/api_utils.dart';
import 'package:mobile/generated/protos/group.pb.dart';

/// logic for managing groups
abstract class BaseGroupRepository {
  FutureEither<Stream<List<Group>>, String> getGroupsForUser(String userId);

  FutureEither<Stream<List<Group>>, String> getGroupsForCurrentUser();

  FutureEither<Group, String> getGroupById(String groupId);

  FutureEither<Group, String> createGroup({
    required String name,
    required String description,
    File? image,
  });
}
