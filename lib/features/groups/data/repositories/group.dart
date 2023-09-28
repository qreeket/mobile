import 'dart:io';

import 'package:api_utils/api_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/core/network/network.info.dart';
import 'package:mobile/features/groups/data/local/data_sources/group.dart';
import 'package:mobile/features/groups/data/remote/data_sources/group.dart';
import 'package:mobile/features/groups/domain/repositories/group.dart';
import 'package:mobile/generated/protos/group.pb.dart';

@Injectable(as: BaseGroupRepository)
final class GroupRepository implements BaseGroupRepository {
  final GroupRemoteDataSource _remoteDataSource;
  final GroupLocalDataSource _localDataSource;
  final NetworkInfo _networkInfo;

  const GroupRepository(
      this._remoteDataSource, this._localDataSource, this._networkInfo);

  @override
  FutureEither<Group, String> getGroupById(String groupId) async {
    if (await _networkInfo.isConnected) {
      final response = await _remoteDataSource.getGroupById(groupId);
      response.fold((l) => _localDataSource.addGroup(l), (r) => null);
    }
    return _localDataSource.getGroupById(groupId);
  }

  @override
  FutureEither<Stream<List<Group>>, String> getGroupsForUser(
      String userId) async {
    if (await _networkInfo.isConnected) {
      final response = await _remoteDataSource.getGroupsForUser(userId);
      response
          .fold((l) => l, (r) => const Stream.empty())
          .listen((groups) async => await _localDataSource.addGroups(groups));
    }
    return _localDataSource.getGroupsForUser(userId);
  }

  @override
  FutureEither<Stream<List<Group>>, String> getGroupsForCurrentUser() async {
    if (await _networkInfo.isConnected) {
      final response = await _remoteDataSource.getGroupsForCurrentUser();
      response
          .fold((l) => l, (r) => const Stream.empty())
          .listen((groups) async => await _localDataSource.addGroups(groups));
    }
    return _localDataSource.getGroupsForCurrentUser();
  }

  @override
  FutureEither<Group, String> createGroup({
    required String name,
    required String description,
    File? image,
  }) async {
    var either = await _remoteDataSource.createGroup(
        name: name, description: description, image: image);
    return either.fold((l) async {
      await _localDataSource.addGroup(l);
      return left(l);
    }, (r) => right(r));
  }
}
