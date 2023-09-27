//
//  Generated code. Do not modify.
//  source: group_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $0;
import 'group.pb.dart' as $3;

export 'group_service.pb.dart';

@$pb.GrpcServiceName('qreeket.GroupService')
class GroupServiceClient extends $grpc.Client {
  static final _$createGroup = $grpc.ClientMethod<$3.CreateGroupRequest, $3.Group>(
      '/qreeket.GroupService/createGroup',
      ($3.CreateGroupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Group.fromBuffer(value));
  static final _$getGroup = $grpc.ClientMethod<$0.StringValue, $3.Group>(
      '/qreeket.GroupService/getGroup',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Group.fromBuffer(value));
  static final _$getGroups = $grpc.ClientMethod<$0.StringValue, $3.GroupList>(
      '/qreeket.GroupService/getGroups',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GroupList.fromBuffer(value));
  static final _$updateGroup = $grpc.ClientMethod<$3.Group, $3.Group>(
      '/qreeket.GroupService/updateGroup',
      ($3.Group value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Group.fromBuffer(value));
  static final _$deleteGroup = $grpc.ClientMethod<$3.DeleteGroupRequest, $0.Empty>(
      '/qreeket.GroupService/deleteGroup',
      ($3.DeleteGroupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$leaveGroup = $grpc.ClientMethod<$3.ManageGroupOrChannel, $0.Empty>(
      '/qreeket.GroupService/leaveGroup',
      ($3.ManageGroupOrChannel value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$inviteToGroup = $grpc.ClientMethod<$3.GroupInviteRequest, $0.Empty>(
      '/qreeket.GroupService/inviteToGroup',
      ($3.GroupInviteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getGroupInvitesForUser = $grpc.ClientMethod<$0.StringValue, $3.GroupInviteList>(
      '/qreeket.GroupService/getGroupInvitesForUser',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GroupInviteList.fromBuffer(value));
  static final _$getGroupInvitesForGroup = $grpc.ClientMethod<$0.StringValue, $3.GroupInviteList>(
      '/qreeket.GroupService/getGroupInvitesForGroup',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GroupInviteList.fromBuffer(value));
  static final _$revokeGroupInvite = $grpc.ClientMethod<$3.RevokeGroupInviteRequest, $0.Empty>(
      '/qreeket.GroupService/revokeGroupInvite',
      ($3.RevokeGroupInviteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$manageGroupInvite = $grpc.ClientMethod<$3.ManageGroupInviteRequest, $0.Empty>(
      '/qreeket.GroupService/manageGroupInvite',
      ($3.ManageGroupInviteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$muteGroup = $grpc.ClientMethod<$3.ManageGroupOrChannelRequest, $0.Empty>(
      '/qreeket.GroupService/muteGroup',
      ($3.ManageGroupOrChannelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$unmuteGroup = $grpc.ClientMethod<$3.ManageGroupOrChannelRequest, $0.Empty>(
      '/qreeket.GroupService/unmuteGroup',
      ($3.ManageGroupOrChannelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$promoteGroupAdmin = $grpc.ClientMethod<$3.ManageAdminRequest, $0.Empty>(
      '/qreeket.GroupService/promoteGroupAdmin',
      ($3.ManageAdminRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$demoteGroupAdmin = $grpc.ClientMethod<$3.ManageAdminRequest, $0.Empty>(
      '/qreeket.GroupService/demoteGroupAdmin',
      ($3.ManageAdminRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$banFromGroup = $grpc.ClientMethod<$3.ManageGroupOrChannelRequest, $0.Empty>(
      '/qreeket.GroupService/banFromGroup',
      ($3.ManageGroupOrChannelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$unbanFromGroup = $grpc.ClientMethod<$3.ManageGroupOrChannelRequest, $0.Empty>(
      '/qreeket.GroupService/unbanFromGroup',
      ($3.ManageGroupOrChannelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  GroupServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.Group> createGroup($3.CreateGroupRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createGroup, request, options: options);
  }

  $grpc.ResponseFuture<$3.Group> getGroup($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getGroup, request, options: options);
  }

  $grpc.ResponseStream<$3.GroupList> getGroups($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getGroups, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$3.Group> updateGroup($3.Group request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateGroup, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteGroup($3.DeleteGroupRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteGroup, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> leaveGroup($3.ManageGroupOrChannel request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$leaveGroup, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> inviteToGroup($3.GroupInviteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$inviteToGroup, request, options: options);
  }

  $grpc.ResponseStream<$3.GroupInviteList> getGroupInvitesForUser($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getGroupInvitesForUser, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$3.GroupInviteList> getGroupInvitesForGroup($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getGroupInvitesForGroup, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.Empty> revokeGroupInvite($3.RevokeGroupInviteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeGroupInvite, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> manageGroupInvite($3.ManageGroupInviteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$manageGroupInvite, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> muteGroup($3.ManageGroupOrChannelRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$muteGroup, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> unmuteGroup($3.ManageGroupOrChannelRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unmuteGroup, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> promoteGroupAdmin($3.ManageAdminRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$promoteGroupAdmin, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> demoteGroupAdmin($3.ManageAdminRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$demoteGroupAdmin, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> banFromGroup($3.ManageGroupOrChannelRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$banFromGroup, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> unbanFromGroup($3.ManageGroupOrChannelRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unbanFromGroup, request, options: options);
  }
}

@$pb.GrpcServiceName('qreeket.GroupService')
abstract class GroupServiceBase extends $grpc.Service {
  $core.String get $name => 'qreeket.GroupService';

  GroupServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.CreateGroupRequest, $3.Group>(
        'createGroup',
        createGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreateGroupRequest.fromBuffer(value),
        ($3.Group value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $3.Group>(
        'getGroup',
        getGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($3.Group value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $3.GroupList>(
        'getGroups',
        getGroups_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($3.GroupList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.Group, $3.Group>(
        'updateGroup',
        updateGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Group.fromBuffer(value),
        ($3.Group value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeleteGroupRequest, $0.Empty>(
        'deleteGroup',
        deleteGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DeleteGroupRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ManageGroupOrChannel, $0.Empty>(
        'leaveGroup',
        leaveGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ManageGroupOrChannel.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GroupInviteRequest, $0.Empty>(
        'inviteToGroup',
        inviteToGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GroupInviteRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $3.GroupInviteList>(
        'getGroupInvitesForUser',
        getGroupInvitesForUser_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($3.GroupInviteList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $3.GroupInviteList>(
        'getGroupInvitesForGroup',
        getGroupInvitesForGroup_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($3.GroupInviteList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.RevokeGroupInviteRequest, $0.Empty>(
        'revokeGroupInvite',
        revokeGroupInvite_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.RevokeGroupInviteRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ManageGroupInviteRequest, $0.Empty>(
        'manageGroupInvite',
        manageGroupInvite_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ManageGroupInviteRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ManageGroupOrChannelRequest, $0.Empty>(
        'muteGroup',
        muteGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ManageGroupOrChannelRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ManageGroupOrChannelRequest, $0.Empty>(
        'unmuteGroup',
        unmuteGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ManageGroupOrChannelRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ManageAdminRequest, $0.Empty>(
        'promoteGroupAdmin',
        promoteGroupAdmin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ManageAdminRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ManageAdminRequest, $0.Empty>(
        'demoteGroupAdmin',
        demoteGroupAdmin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ManageAdminRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ManageGroupOrChannelRequest, $0.Empty>(
        'banFromGroup',
        banFromGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ManageGroupOrChannelRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ManageGroupOrChannelRequest, $0.Empty>(
        'unbanFromGroup',
        unbanFromGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ManageGroupOrChannelRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$3.Group> createGroup_Pre($grpc.ServiceCall call, $async.Future<$3.CreateGroupRequest> request) async {
    return createGroup(call, await request);
  }

  $async.Future<$3.Group> getGroup_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return getGroup(call, await request);
  }

  $async.Stream<$3.GroupList> getGroups_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async* {
    yield* getGroups(call, await request);
  }

  $async.Future<$3.Group> updateGroup_Pre($grpc.ServiceCall call, $async.Future<$3.Group> request) async {
    return updateGroup(call, await request);
  }

  $async.Future<$0.Empty> deleteGroup_Pre($grpc.ServiceCall call, $async.Future<$3.DeleteGroupRequest> request) async {
    return deleteGroup(call, await request);
  }

  $async.Future<$0.Empty> leaveGroup_Pre($grpc.ServiceCall call, $async.Future<$3.ManageGroupOrChannel> request) async {
    return leaveGroup(call, await request);
  }

  $async.Future<$0.Empty> inviteToGroup_Pre($grpc.ServiceCall call, $async.Future<$3.GroupInviteRequest> request) async {
    return inviteToGroup(call, await request);
  }

  $async.Stream<$3.GroupInviteList> getGroupInvitesForUser_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async* {
    yield* getGroupInvitesForUser(call, await request);
  }

  $async.Stream<$3.GroupInviteList> getGroupInvitesForGroup_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async* {
    yield* getGroupInvitesForGroup(call, await request);
  }

  $async.Future<$0.Empty> revokeGroupInvite_Pre($grpc.ServiceCall call, $async.Future<$3.RevokeGroupInviteRequest> request) async {
    return revokeGroupInvite(call, await request);
  }

  $async.Future<$0.Empty> manageGroupInvite_Pre($grpc.ServiceCall call, $async.Future<$3.ManageGroupInviteRequest> request) async {
    return manageGroupInvite(call, await request);
  }

  $async.Future<$0.Empty> muteGroup_Pre($grpc.ServiceCall call, $async.Future<$3.ManageGroupOrChannelRequest> request) async {
    return muteGroup(call, await request);
  }

  $async.Future<$0.Empty> unmuteGroup_Pre($grpc.ServiceCall call, $async.Future<$3.ManageGroupOrChannelRequest> request) async {
    return unmuteGroup(call, await request);
  }

  $async.Future<$0.Empty> promoteGroupAdmin_Pre($grpc.ServiceCall call, $async.Future<$3.ManageAdminRequest> request) async {
    return promoteGroupAdmin(call, await request);
  }

  $async.Future<$0.Empty> demoteGroupAdmin_Pre($grpc.ServiceCall call, $async.Future<$3.ManageAdminRequest> request) async {
    return demoteGroupAdmin(call, await request);
  }

  $async.Future<$0.Empty> banFromGroup_Pre($grpc.ServiceCall call, $async.Future<$3.ManageGroupOrChannelRequest> request) async {
    return banFromGroup(call, await request);
  }

  $async.Future<$0.Empty> unbanFromGroup_Pre($grpc.ServiceCall call, $async.Future<$3.ManageGroupOrChannelRequest> request) async {
    return unbanFromGroup(call, await request);
  }

  $async.Future<$3.Group> createGroup($grpc.ServiceCall call, $3.CreateGroupRequest request);
  $async.Future<$3.Group> getGroup($grpc.ServiceCall call, $0.StringValue request);
  $async.Stream<$3.GroupList> getGroups($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$3.Group> updateGroup($grpc.ServiceCall call, $3.Group request);
  $async.Future<$0.Empty> deleteGroup($grpc.ServiceCall call, $3.DeleteGroupRequest request);
  $async.Future<$0.Empty> leaveGroup($grpc.ServiceCall call, $3.ManageGroupOrChannel request);
  $async.Future<$0.Empty> inviteToGroup($grpc.ServiceCall call, $3.GroupInviteRequest request);
  $async.Stream<$3.GroupInviteList> getGroupInvitesForUser($grpc.ServiceCall call, $0.StringValue request);
  $async.Stream<$3.GroupInviteList> getGroupInvitesForGroup($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$0.Empty> revokeGroupInvite($grpc.ServiceCall call, $3.RevokeGroupInviteRequest request);
  $async.Future<$0.Empty> manageGroupInvite($grpc.ServiceCall call, $3.ManageGroupInviteRequest request);
  $async.Future<$0.Empty> muteGroup($grpc.ServiceCall call, $3.ManageGroupOrChannelRequest request);
  $async.Future<$0.Empty> unmuteGroup($grpc.ServiceCall call, $3.ManageGroupOrChannelRequest request);
  $async.Future<$0.Empty> promoteGroupAdmin($grpc.ServiceCall call, $3.ManageAdminRequest request);
  $async.Future<$0.Empty> demoteGroupAdmin($grpc.ServiceCall call, $3.ManageAdminRequest request);
  $async.Future<$0.Empty> banFromGroup($grpc.ServiceCall call, $3.ManageGroupOrChannelRequest request);
  $async.Future<$0.Empty> unbanFromGroup($grpc.ServiceCall call, $3.ManageGroupOrChannelRequest request);
}
@$pb.GrpcServiceName('qreeket.ChannelService')
class ChannelServiceClient extends $grpc.Client {
  static final _$createChannel = $grpc.ClientMethod<$3.CreateChannelRequest, $3.Channel>(
      '/qreeket.ChannelService/createChannel',
      ($3.CreateChannelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Channel.fromBuffer(value));
  static final _$getChannel = $grpc.ClientMethod<$0.StringValue, $3.Channel>(
      '/qreeket.ChannelService/getChannel',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Channel.fromBuffer(value));
  static final _$getChannelsForGroup = $grpc.ClientMethod<$0.StringValue, $3.ChannelList>(
      '/qreeket.ChannelService/getChannelsForGroup',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ChannelList.fromBuffer(value));
  static final _$updateChannel = $grpc.ClientMethod<$3.Channel, $3.Channel>(
      '/qreeket.ChannelService/updateChannel',
      ($3.Channel value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Channel.fromBuffer(value));
  static final _$deleteChannel = $grpc.ClientMethod<$0.StringValue, $0.Empty>(
      '/qreeket.ChannelService/deleteChannel',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$leaveChannel = $grpc.ClientMethod<$3.ManageGroupOrChannel, $0.Empty>(
      '/qreeket.ChannelService/leaveChannel',
      ($3.ManageGroupOrChannel value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$subscribeToChannel = $grpc.ClientMethod<$3.ChannelSubscriptionRequest, $0.Empty>(
      '/qreeket.ChannelService/subscribeToChannel',
      ($3.ChannelSubscriptionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$unsubscribeFromChannel = $grpc.ClientMethod<$3.ChannelSubscriptionRequest, $0.Empty>(
      '/qreeket.ChannelService/unsubscribeFromChannel',
      ($3.ChannelSubscriptionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$manageChannelSubscription = $grpc.ClientMethod<$3.ManageChannelSubscriptionRequest, $0.Empty>(
      '/qreeket.ChannelService/manageChannelSubscription',
      ($3.ManageChannelSubscriptionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getChannelSubscriptionsForUser = $grpc.ClientMethod<$0.StringValue, $3.ChannelSubscriptionList>(
      '/qreeket.ChannelService/getChannelSubscriptionsForUser',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ChannelSubscriptionList.fromBuffer(value));
  static final _$muteChannel = $grpc.ClientMethod<$3.ManageGroupOrChannelRequest, $0.Empty>(
      '/qreeket.ChannelService/muteChannel',
      ($3.ManageGroupOrChannelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$unmuteChannel = $grpc.ClientMethod<$3.ManageGroupOrChannelRequest, $0.Empty>(
      '/qreeket.ChannelService/unmuteChannel',
      ($3.ManageGroupOrChannelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  ChannelServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.Channel> createChannel($3.CreateChannelRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createChannel, request, options: options);
  }

  $grpc.ResponseFuture<$3.Channel> getChannel($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getChannel, request, options: options);
  }

  $grpc.ResponseStream<$3.ChannelList> getChannelsForGroup($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getChannelsForGroup, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$3.Channel> updateChannel($3.Channel request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateChannel, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteChannel($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteChannel, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> leaveChannel($3.ManageGroupOrChannel request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$leaveChannel, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> subscribeToChannel($3.ChannelSubscriptionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$subscribeToChannel, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> unsubscribeFromChannel($3.ChannelSubscriptionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unsubscribeFromChannel, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> manageChannelSubscription($3.ManageChannelSubscriptionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$manageChannelSubscription, request, options: options);
  }

  $grpc.ResponseStream<$3.ChannelSubscriptionList> getChannelSubscriptionsForUser($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getChannelSubscriptionsForUser, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.Empty> muteChannel($3.ManageGroupOrChannelRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$muteChannel, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> unmuteChannel($3.ManageGroupOrChannelRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unmuteChannel, request, options: options);
  }
}

@$pb.GrpcServiceName('qreeket.ChannelService')
abstract class ChannelServiceBase extends $grpc.Service {
  $core.String get $name => 'qreeket.ChannelService';

  ChannelServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.CreateChannelRequest, $3.Channel>(
        'createChannel',
        createChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreateChannelRequest.fromBuffer(value),
        ($3.Channel value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $3.Channel>(
        'getChannel',
        getChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($3.Channel value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $3.ChannelList>(
        'getChannelsForGroup',
        getChannelsForGroup_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($3.ChannelList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.Channel, $3.Channel>(
        'updateChannel',
        updateChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Channel.fromBuffer(value),
        ($3.Channel value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.Empty>(
        'deleteChannel',
        deleteChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ManageGroupOrChannel, $0.Empty>(
        'leaveChannel',
        leaveChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ManageGroupOrChannel.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ChannelSubscriptionRequest, $0.Empty>(
        'subscribeToChannel',
        subscribeToChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ChannelSubscriptionRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ChannelSubscriptionRequest, $0.Empty>(
        'unsubscribeFromChannel',
        unsubscribeFromChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ChannelSubscriptionRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ManageChannelSubscriptionRequest, $0.Empty>(
        'manageChannelSubscription',
        manageChannelSubscription_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ManageChannelSubscriptionRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $3.ChannelSubscriptionList>(
        'getChannelSubscriptionsForUser',
        getChannelSubscriptionsForUser_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($3.ChannelSubscriptionList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ManageGroupOrChannelRequest, $0.Empty>(
        'muteChannel',
        muteChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ManageGroupOrChannelRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ManageGroupOrChannelRequest, $0.Empty>(
        'unmuteChannel',
        unmuteChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ManageGroupOrChannelRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$3.Channel> createChannel_Pre($grpc.ServiceCall call, $async.Future<$3.CreateChannelRequest> request) async {
    return createChannel(call, await request);
  }

  $async.Future<$3.Channel> getChannel_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return getChannel(call, await request);
  }

  $async.Stream<$3.ChannelList> getChannelsForGroup_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async* {
    yield* getChannelsForGroup(call, await request);
  }

  $async.Future<$3.Channel> updateChannel_Pre($grpc.ServiceCall call, $async.Future<$3.Channel> request) async {
    return updateChannel(call, await request);
  }

  $async.Future<$0.Empty> deleteChannel_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return deleteChannel(call, await request);
  }

  $async.Future<$0.Empty> leaveChannel_Pre($grpc.ServiceCall call, $async.Future<$3.ManageGroupOrChannel> request) async {
    return leaveChannel(call, await request);
  }

  $async.Future<$0.Empty> subscribeToChannel_Pre($grpc.ServiceCall call, $async.Future<$3.ChannelSubscriptionRequest> request) async {
    return subscribeToChannel(call, await request);
  }

  $async.Future<$0.Empty> unsubscribeFromChannel_Pre($grpc.ServiceCall call, $async.Future<$3.ChannelSubscriptionRequest> request) async {
    return unsubscribeFromChannel(call, await request);
  }

  $async.Future<$0.Empty> manageChannelSubscription_Pre($grpc.ServiceCall call, $async.Future<$3.ManageChannelSubscriptionRequest> request) async {
    return manageChannelSubscription(call, await request);
  }

  $async.Stream<$3.ChannelSubscriptionList> getChannelSubscriptionsForUser_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async* {
    yield* getChannelSubscriptionsForUser(call, await request);
  }

  $async.Future<$0.Empty> muteChannel_Pre($grpc.ServiceCall call, $async.Future<$3.ManageGroupOrChannelRequest> request) async {
    return muteChannel(call, await request);
  }

  $async.Future<$0.Empty> unmuteChannel_Pre($grpc.ServiceCall call, $async.Future<$3.ManageGroupOrChannelRequest> request) async {
    return unmuteChannel(call, await request);
  }

  $async.Future<$3.Channel> createChannel($grpc.ServiceCall call, $3.CreateChannelRequest request);
  $async.Future<$3.Channel> getChannel($grpc.ServiceCall call, $0.StringValue request);
  $async.Stream<$3.ChannelList> getChannelsForGroup($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$3.Channel> updateChannel($grpc.ServiceCall call, $3.Channel request);
  $async.Future<$0.Empty> deleteChannel($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$0.Empty> leaveChannel($grpc.ServiceCall call, $3.ManageGroupOrChannel request);
  $async.Future<$0.Empty> subscribeToChannel($grpc.ServiceCall call, $3.ChannelSubscriptionRequest request);
  $async.Future<$0.Empty> unsubscribeFromChannel($grpc.ServiceCall call, $3.ChannelSubscriptionRequest request);
  $async.Future<$0.Empty> manageChannelSubscription($grpc.ServiceCall call, $3.ManageChannelSubscriptionRequest request);
  $async.Stream<$3.ChannelSubscriptionList> getChannelSubscriptionsForUser($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$0.Empty> muteChannel($grpc.ServiceCall call, $3.ManageGroupOrChannelRequest request);
  $async.Future<$0.Empty> unmuteChannel($grpc.ServiceCall call, $3.ManageGroupOrChannelRequest request);
}
