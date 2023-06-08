import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/features/common/domain/repositories/security.dart';
import 'package:mobile/generated/protos/group.pb.dart';

@injectable
class GroupLocalDataSource {
  final BaseSecurityRepository _securityRepository;
  final Box<Group> _groupsBox;

  const GroupLocalDataSource(this._securityRepository, this._groupsBox);

  Future<void> addGroup(Group group) async {
    await _groupsBox.put(group.id, group);
  }

  Future<void> addGroups(List<Group> groups) async =>
      _groupsBox.putAll({for (var e in groups) e.id: e});

  Future<void> removeGroup(String groupId) async {
    await _groupsBox.delete(groupId);
  }

  Future<void> removeGroups(List<String> groupIds) async => _groupsBox
      .deleteAll(groupIds.where((element) => _groupsBox.containsKey(element)));

  Future<Either<Group, String>> getGroupById(String groupId) async {
    final group = _groupsBox.get(groupId);
    if (group == null) return right('Group no longer exists');
    return left(group);
  }

  Future<Either<Stream<List<Group>>, String>> getGroupsForUser(
      String userId) async {
    // get all groups from box
    final groups = _groupsBox.values
        .where((element) =>
            element.subscribers.map((e) => e.id).contains(userId) ||
            element.admins.contains(userId))
        .cast<Group>()
        .toList();
    return left(Stream.value(groups).asBroadcastStream());
  }

  Future<Either<Stream<List<Group>>, String>> getGroupsForCurrentUser() async {
    final uid = await _securityRepository.getUserId();
    // get all groups from box
    final groups = _groupsBox.values
        .where((element) =>
            element.subscribers.map((e) => e.id).contains(uid) ||
            element.admins.contains(uid))
        .cast<Group>()
        .toList();
    return left(Stream.value(groups).asBroadcastStream());
  }
}
