import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/core/network/error.handler.dart';
import 'package:mobile/core/utils/image.utils.dart';
import 'package:mobile/features/common/domain/repositories/security.dart';
import 'package:mobile/generated/protos/group.pb.dart';
import 'package:mobile/generated/protos/group_service.pbgrpc.dart';
import 'package:protobuf_google/protobuf_google.dart';

/// remote data source for group repository
@injectable
final class GroupRemoteDataSource {
  final GroupChannelServiceClient _groupClient;
  final BaseSecurityRepository _securityRepository;

  const GroupRemoteDataSource(this._groupClient, this._securityRepository);

  Future<Either<Group, String>> getGroupById(String groupId) async =>
      runWithGrpcUnaryZonedGuarded(
          run: () async =>
              await _groupClient.getGroup(StringValue(value: groupId)));

  Future<Either<Stream<List<Group>>, String>> getGroupsForUser(
          String userId) async =>
      runWithGrpcStreamZonedGuarded(run: () async {
        final response = _groupClient.getGroups(StringValue(value: userId));
        return response.map((event) => event.groups).asBroadcastStream();
      });

  Future<Either<Stream<List<Group>>, String>> getGroupsForCurrentUser() async =>
      runWithGrpcStreamZonedGuarded(run: () async {
        final uid = await _securityRepository.getUserId();
        final response = _groupClient.getGroups(StringValue(value: uid));
        return response.map((event) => event.groups).asBroadcastStream();
      });

  Future<Either<Group, String>> createGroup({
    required String name,
    required String description,
    File? image,
  }) async =>
      runWithGrpcUnaryZonedGuarded(run: () async {
        var request = CreateGroupRequest(
          name: name,
          description: description,
          admin: await _securityRepository.getUserId(),
          icon: image == null ? null : await fileToBytes(image.absolute.path),
          tags: <String>[],
        );
        var group = await _groupClient.createGroup(request);
        return group;
      });
}
