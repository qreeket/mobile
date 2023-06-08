part of 'group_bloc.dart';

abstract class GroupEvent {
  const GroupEvent();
}

class CreateGroup extends GroupEvent {
  final String name, description;
  final File? image;

  const CreateGroup({
    required this.name,
    required this.description,
    this.image,
  });
}

class GetGroupsForCurrentUser extends GroupEvent {
  const GetGroupsForCurrentUser();
}

class GetGroupsForUser extends GroupEvent {
  final String userId;

  const GetGroupsForUser(this.userId);
}

class GetGroupById extends GroupEvent {
  final String groupId;

  const GetGroupById(this.groupId);
}
