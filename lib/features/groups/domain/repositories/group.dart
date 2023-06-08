import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:mobile/generated/protos/group.pb.dart';

/// logic for managing groups
abstract class BaseGroupRepository {
  Future<Either<Stream<List<Group>>, String>> getGroupsForUser(String userId);

  Future<Either<Stream<List<Group>>, String>> getGroupsForCurrentUser();

  Future<Either<Group, String>> getGroupById(String groupId);

  Future<Either<Group, String>> createGroup({
    required String name,
    required String description,
    File? image,
  });
}
