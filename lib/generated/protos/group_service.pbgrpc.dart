///
//  Generated code. Do not modify.
//  source: group_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'group.pb.dart' as $4;
import 'package:protobuf_google/protobuf_google.dart' as $2;
import 'package:protobuf_google/protobuf_google.dart' as $0;
export 'group_service.pb.dart';

class GroupChannelServiceClient extends $grpc.Client {
  static final _$createChannel =
      $grpc.ClientMethod<$4.CreateChannelRequest, $4.Channel>(
          '/qreeket.GroupChannelService/createChannel',
          ($4.CreateChannelRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.Channel.fromBuffer(value));
  static final _$getChannel = $grpc.ClientMethod<$2.StringValue, $4.Channel>(
      '/qreeket.GroupChannelService/getChannel',
      ($2.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.Channel.fromBuffer(value));
  static final _$getChannelsForGroup =
      $grpc.ClientMethod<$2.StringValue, $4.ChannelList>(
          '/qreeket.GroupChannelService/getChannelsForGroup',
          ($2.StringValue value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.ChannelList.fromBuffer(value));
  static final _$updateChannel = $grpc.ClientMethod<$4.Channel, $4.Channel>(
      '/qreeket.GroupChannelService/updateChannel',
      ($4.Channel value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.Channel.fromBuffer(value));
  static final _$deleteChannel = $grpc.ClientMethod<$2.StringValue, $0.Empty>(
      '/qreeket.GroupChannelService/deleteChannel',
      ($2.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$leaveChannel =
      $grpc.ClientMethod<$4.ManageGroupOrChannel, $0.Empty>(
          '/qreeket.GroupChannelService/leaveChannel',
          ($4.ManageGroupOrChannel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$subscribeToChannel =
      $grpc.ClientMethod<$4.ChannelSubscriptionRequest, $0.Empty>(
          '/qreeket.GroupChannelService/subscribeToChannel',
          ($4.ChannelSubscriptionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$unsubscribeFromChannel =
      $grpc.ClientMethod<$4.ChannelSubscriptionRequest, $0.Empty>(
          '/qreeket.GroupChannelService/unsubscribeFromChannel',
          ($4.ChannelSubscriptionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$manageChannelSubscription =
      $grpc.ClientMethod<$4.ManageChannelSubscriptionRequest, $0.Empty>(
          '/qreeket.GroupChannelService/manageChannelSubscription',
          ($4.ManageChannelSubscriptionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getChannelSubscriptionsForUser =
      $grpc.ClientMethod<$2.StringValue, $4.ChannelSubscriptionList>(
          '/qreeket.GroupChannelService/getChannelSubscriptionsForUser',
          ($2.StringValue value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.ChannelSubscriptionList.fromBuffer(value));
  static final _$muteChannel =
      $grpc.ClientMethod<$4.ManageGroupOrChannelRequest, $0.Empty>(
          '/qreeket.GroupChannelService/muteChannel',
          ($4.ManageGroupOrChannelRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$unmuteChannel =
      $grpc.ClientMethod<$4.ManageGroupOrChannelRequest, $0.Empty>(
          '/qreeket.GroupChannelService/unmuteChannel',
          ($4.ManageGroupOrChannelRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$createGroup =
      $grpc.ClientMethod<$4.CreateGroupRequest, $4.Group>(
          '/qreeket.GroupChannelService/createGroup',
          ($4.CreateGroupRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.Group.fromBuffer(value));
  static final _$getGroup = $grpc.ClientMethod<$2.StringValue, $4.Group>(
      '/qreeket.GroupChannelService/getGroup',
      ($2.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.Group.fromBuffer(value));
  static final _$getGroups = $grpc.ClientMethod<$2.StringValue, $4.GroupList>(
      '/qreeket.GroupChannelService/getGroups',
      ($2.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GroupList.fromBuffer(value));
  static final _$updateGroup = $grpc.ClientMethod<$4.Group, $4.Group>(
      '/qreeket.GroupChannelService/updateGroup',
      ($4.Group value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.Group.fromBuffer(value));
  static final _$deleteGroup =
      $grpc.ClientMethod<$4.DeleteGroupRequest, $0.Empty>(
          '/qreeket.GroupChannelService/deleteGroup',
          ($4.DeleteGroupRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$leaveGroup =
      $grpc.ClientMethod<$4.ManageGroupOrChannel, $0.Empty>(
          '/qreeket.GroupChannelService/leaveGroup',
          ($4.ManageGroupOrChannel value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$inviteToGroup =
      $grpc.ClientMethod<$4.GroupInviteRequest, $0.Empty>(
          '/qreeket.GroupChannelService/inviteToGroup',
          ($4.GroupInviteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getGroupInvitesForUser =
      $grpc.ClientMethod<$2.StringValue, $4.GroupInviteList>(
          '/qreeket.GroupChannelService/getGroupInvitesForUser',
          ($2.StringValue value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.GroupInviteList.fromBuffer(value));
  static final _$getGroupInvitesForGroup =
      $grpc.ClientMethod<$2.StringValue, $4.GroupInviteList>(
          '/qreeket.GroupChannelService/getGroupInvitesForGroup',
          ($2.StringValue value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.GroupInviteList.fromBuffer(value));
  static final _$revokeGroupInvite =
      $grpc.ClientMethod<$4.RevokeGroupInviteRequest, $0.Empty>(
          '/qreeket.GroupChannelService/revokeGroupInvite',
          ($4.RevokeGroupInviteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$manageGroupInvite =
      $grpc.ClientMethod<$4.ManageGroupInviteRequest, $0.Empty>(
          '/qreeket.GroupChannelService/manageGroupInvite',
          ($4.ManageGroupInviteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$muteGroup =
      $grpc.ClientMethod<$4.ManageGroupOrChannelRequest, $0.Empty>(
          '/qreeket.GroupChannelService/muteGroup',
          ($4.ManageGroupOrChannelRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$unmuteGroup =
      $grpc.ClientMethod<$4.ManageGroupOrChannelRequest, $0.Empty>(
          '/qreeket.GroupChannelService/unmuteGroup',
          ($4.ManageGroupOrChannelRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$promoteGroupAdmin =
      $grpc.ClientMethod<$4.ManageAdminRequest, $0.Empty>(
          '/qreeket.GroupChannelService/promoteGroupAdmin',
          ($4.ManageAdminRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$demoteGroupAdmin =
      $grpc.ClientMethod<$4.ManageAdminRequest, $0.Empty>(
          '/qreeket.GroupChannelService/demoteGroupAdmin',
          ($4.ManageAdminRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$banFromGroup =
      $grpc.ClientMethod<$4.ManageGroupOrChannelRequest, $0.Empty>(
          '/qreeket.GroupChannelService/banFromGroup',
          ($4.ManageGroupOrChannelRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$unbanFromGroup =
      $grpc.ClientMethod<$4.ManageGroupOrChannelRequest, $0.Empty>(
          '/qreeket.GroupChannelService/unbanFromGroup',
          ($4.ManageGroupOrChannelRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  GroupChannelServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.Channel> createChannel(
      $4.CreateChannelRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createChannel, request, options: options);
  }

  $grpc.ResponseFuture<$4.Channel> getChannel($2.StringValue request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getChannel, request, options: options);
  }

  $grpc.ResponseStream<$4.ChannelList> getChannelsForGroup(
      $2.StringValue request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getChannelsForGroup, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$4.Channel> updateChannel($4.Channel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateChannel, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteChannel($2.StringValue request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteChannel, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> leaveChannel($4.ManageGroupOrChannel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$leaveChannel, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> subscribeToChannel(
      $4.ChannelSubscriptionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$subscribeToChannel, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> unsubscribeFromChannel(
      $4.ChannelSubscriptionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unsubscribeFromChannel, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> manageChannelSubscription(
      $4.ManageChannelSubscriptionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$manageChannelSubscription, request,
        options: options);
  }

  $grpc.ResponseStream<$4.ChannelSubscriptionList>
      getChannelSubscriptionsForUser($2.StringValue request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getChannelSubscriptionsForUser, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> muteChannel(
      $4.ManageGroupOrChannelRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$muteChannel, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> unmuteChannel(
      $4.ManageGroupOrChannelRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unmuteChannel, request, options: options);
  }

  $grpc.ResponseFuture<$4.Group> createGroup($4.CreateGroupRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createGroup, request, options: options);
  }

  $grpc.ResponseFuture<$4.Group> getGroup($2.StringValue request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getGroup, request, options: options);
  }

  $grpc.ResponseStream<$4.GroupList> getGroups($2.StringValue request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getGroups, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$4.Group> updateGroup($4.Group request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateGroup, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteGroup($4.DeleteGroupRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteGroup, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> leaveGroup($4.ManageGroupOrChannel request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$leaveGroup, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> inviteToGroup($4.GroupInviteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$inviteToGroup, request, options: options);
  }

  $grpc.ResponseStream<$4.GroupInviteList> getGroupInvitesForUser(
      $2.StringValue request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getGroupInvitesForUser, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$4.GroupInviteList> getGroupInvitesForGroup(
      $2.StringValue request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getGroupInvitesForGroup, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> revokeGroupInvite(
      $4.RevokeGroupInviteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeGroupInvite, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> manageGroupInvite(
      $4.ManageGroupInviteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$manageGroupInvite, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> muteGroup(
      $4.ManageGroupOrChannelRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$muteGroup, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> unmuteGroup(
      $4.ManageGroupOrChannelRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unmuteGroup, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> promoteGroupAdmin(
      $4.ManageAdminRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$promoteGroupAdmin, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> demoteGroupAdmin($4.ManageAdminRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$demoteGroupAdmin, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> banFromGroup(
      $4.ManageGroupOrChannelRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$banFromGroup, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> unbanFromGroup(
      $4.ManageGroupOrChannelRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unbanFromGroup, request, options: options);
  }
}

abstract class GroupChannelServiceBase extends $grpc.Service {
  $core.String get $name => 'qreeket.GroupChannelService';

  GroupChannelServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.CreateChannelRequest, $4.Channel>(
        'createChannel',
        createChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.CreateChannelRequest.fromBuffer(value),
        ($4.Channel value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StringValue, $4.Channel>(
        'getChannel',
        getChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.StringValue.fromBuffer(value),
        ($4.Channel value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StringValue, $4.ChannelList>(
        'getChannelsForGroup',
        getChannelsForGroup_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.StringValue.fromBuffer(value),
        ($4.ChannelList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.Channel, $4.Channel>(
        'updateChannel',
        updateChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.Channel.fromBuffer(value),
        ($4.Channel value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StringValue, $0.Empty>(
        'deleteChannel',
        deleteChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ManageGroupOrChannel, $0.Empty>(
        'leaveChannel',
        leaveChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ManageGroupOrChannel.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ChannelSubscriptionRequest, $0.Empty>(
        'subscribeToChannel',
        subscribeToChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ChannelSubscriptionRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ChannelSubscriptionRequest, $0.Empty>(
        'unsubscribeFromChannel',
        unsubscribeFromChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ChannelSubscriptionRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.ManageChannelSubscriptionRequest, $0.Empty>(
            'manageChannelSubscription',
            manageChannelSubscription_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.ManageChannelSubscriptionRequest.fromBuffer(value),
            ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StringValue, $4.ChannelSubscriptionList>(
        'getChannelSubscriptionsForUser',
        getChannelSubscriptionsForUser_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.StringValue.fromBuffer(value),
        ($4.ChannelSubscriptionList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ManageGroupOrChannelRequest, $0.Empty>(
        'muteChannel',
        muteChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ManageGroupOrChannelRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ManageGroupOrChannelRequest, $0.Empty>(
        'unmuteChannel',
        unmuteChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ManageGroupOrChannelRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.CreateGroupRequest, $4.Group>(
        'createGroup',
        createGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.CreateGroupRequest.fromBuffer(value),
        ($4.Group value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StringValue, $4.Group>(
        'getGroup',
        getGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.StringValue.fromBuffer(value),
        ($4.Group value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StringValue, $4.GroupList>(
        'getGroups',
        getGroups_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.StringValue.fromBuffer(value),
        ($4.GroupList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.Group, $4.Group>(
        'updateGroup',
        updateGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.Group.fromBuffer(value),
        ($4.Group value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteGroupRequest, $0.Empty>(
        'deleteGroup',
        deleteGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.DeleteGroupRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ManageGroupOrChannel, $0.Empty>(
        'leaveGroup',
        leaveGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ManageGroupOrChannel.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GroupInviteRequest, $0.Empty>(
        'inviteToGroup',
        inviteToGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.GroupInviteRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StringValue, $4.GroupInviteList>(
        'getGroupInvitesForUser',
        getGroupInvitesForUser_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.StringValue.fromBuffer(value),
        ($4.GroupInviteList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StringValue, $4.GroupInviteList>(
        'getGroupInvitesForGroup',
        getGroupInvitesForGroup_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.StringValue.fromBuffer(value),
        ($4.GroupInviteList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.RevokeGroupInviteRequest, $0.Empty>(
        'revokeGroupInvite',
        revokeGroupInvite_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.RevokeGroupInviteRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ManageGroupInviteRequest, $0.Empty>(
        'manageGroupInvite',
        manageGroupInvite_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ManageGroupInviteRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ManageGroupOrChannelRequest, $0.Empty>(
        'muteGroup',
        muteGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ManageGroupOrChannelRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ManageGroupOrChannelRequest, $0.Empty>(
        'unmuteGroup',
        unmuteGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ManageGroupOrChannelRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ManageAdminRequest, $0.Empty>(
        'promoteGroupAdmin',
        promoteGroupAdmin_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ManageAdminRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ManageAdminRequest, $0.Empty>(
        'demoteGroupAdmin',
        demoteGroupAdmin_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ManageAdminRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ManageGroupOrChannelRequest, $0.Empty>(
        'banFromGroup',
        banFromGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ManageGroupOrChannelRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ManageGroupOrChannelRequest, $0.Empty>(
        'unbanFromGroup',
        unbanFromGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ManageGroupOrChannelRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$4.Channel> createChannel_Pre($grpc.ServiceCall call,
      $async.Future<$4.CreateChannelRequest> request) async {
    return createChannel(call, await request);
  }

  $async.Future<$4.Channel> getChannel_Pre(
      $grpc.ServiceCall call, $async.Future<$2.StringValue> request) async {
    return getChannel(call, await request);
  }

  $async.Stream<$4.ChannelList> getChannelsForGroup_Pre(
      $grpc.ServiceCall call, $async.Future<$2.StringValue> request) async* {
    yield* getChannelsForGroup(call, await request);
  }

  $async.Future<$4.Channel> updateChannel_Pre(
      $grpc.ServiceCall call, $async.Future<$4.Channel> request) async {
    return updateChannel(call, await request);
  }

  $async.Future<$0.Empty> deleteChannel_Pre(
      $grpc.ServiceCall call, $async.Future<$2.StringValue> request) async {
    return deleteChannel(call, await request);
  }

  $async.Future<$0.Empty> leaveChannel_Pre($grpc.ServiceCall call,
      $async.Future<$4.ManageGroupOrChannel> request) async {
    return leaveChannel(call, await request);
  }

  $async.Future<$0.Empty> subscribeToChannel_Pre($grpc.ServiceCall call,
      $async.Future<$4.ChannelSubscriptionRequest> request) async {
    return subscribeToChannel(call, await request);
  }

  $async.Future<$0.Empty> unsubscribeFromChannel_Pre($grpc.ServiceCall call,
      $async.Future<$4.ChannelSubscriptionRequest> request) async {
    return unsubscribeFromChannel(call, await request);
  }

  $async.Future<$0.Empty> manageChannelSubscription_Pre($grpc.ServiceCall call,
      $async.Future<$4.ManageChannelSubscriptionRequest> request) async {
    return manageChannelSubscription(call, await request);
  }

  $async.Stream<$4.ChannelSubscriptionList> getChannelSubscriptionsForUser_Pre(
      $grpc.ServiceCall call, $async.Future<$2.StringValue> request) async* {
    yield* getChannelSubscriptionsForUser(call, await request);
  }

  $async.Future<$0.Empty> muteChannel_Pre($grpc.ServiceCall call,
      $async.Future<$4.ManageGroupOrChannelRequest> request) async {
    return muteChannel(call, await request);
  }

  $async.Future<$0.Empty> unmuteChannel_Pre($grpc.ServiceCall call,
      $async.Future<$4.ManageGroupOrChannelRequest> request) async {
    return unmuteChannel(call, await request);
  }

  $async.Future<$4.Group> createGroup_Pre($grpc.ServiceCall call,
      $async.Future<$4.CreateGroupRequest> request) async {
    return createGroup(call, await request);
  }

  $async.Future<$4.Group> getGroup_Pre(
      $grpc.ServiceCall call, $async.Future<$2.StringValue> request) async {
    return getGroup(call, await request);
  }

  $async.Stream<$4.GroupList> getGroups_Pre(
      $grpc.ServiceCall call, $async.Future<$2.StringValue> request) async* {
    yield* getGroups(call, await request);
  }

  $async.Future<$4.Group> updateGroup_Pre(
      $grpc.ServiceCall call, $async.Future<$4.Group> request) async {
    return updateGroup(call, await request);
  }

  $async.Future<$0.Empty> deleteGroup_Pre($grpc.ServiceCall call,
      $async.Future<$4.DeleteGroupRequest> request) async {
    return deleteGroup(call, await request);
  }

  $async.Future<$0.Empty> leaveGroup_Pre($grpc.ServiceCall call,
      $async.Future<$4.ManageGroupOrChannel> request) async {
    return leaveGroup(call, await request);
  }

  $async.Future<$0.Empty> inviteToGroup_Pre($grpc.ServiceCall call,
      $async.Future<$4.GroupInviteRequest> request) async {
    return inviteToGroup(call, await request);
  }

  $async.Stream<$4.GroupInviteList> getGroupInvitesForUser_Pre(
      $grpc.ServiceCall call, $async.Future<$2.StringValue> request) async* {
    yield* getGroupInvitesForUser(call, await request);
  }

  $async.Stream<$4.GroupInviteList> getGroupInvitesForGroup_Pre(
      $grpc.ServiceCall call, $async.Future<$2.StringValue> request) async* {
    yield* getGroupInvitesForGroup(call, await request);
  }

  $async.Future<$0.Empty> revokeGroupInvite_Pre($grpc.ServiceCall call,
      $async.Future<$4.RevokeGroupInviteRequest> request) async {
    return revokeGroupInvite(call, await request);
  }

  $async.Future<$0.Empty> manageGroupInvite_Pre($grpc.ServiceCall call,
      $async.Future<$4.ManageGroupInviteRequest> request) async {
    return manageGroupInvite(call, await request);
  }

  $async.Future<$0.Empty> muteGroup_Pre($grpc.ServiceCall call,
      $async.Future<$4.ManageGroupOrChannelRequest> request) async {
    return muteGroup(call, await request);
  }

  $async.Future<$0.Empty> unmuteGroup_Pre($grpc.ServiceCall call,
      $async.Future<$4.ManageGroupOrChannelRequest> request) async {
    return unmuteGroup(call, await request);
  }

  $async.Future<$0.Empty> promoteGroupAdmin_Pre($grpc.ServiceCall call,
      $async.Future<$4.ManageAdminRequest> request) async {
    return promoteGroupAdmin(call, await request);
  }

  $async.Future<$0.Empty> demoteGroupAdmin_Pre($grpc.ServiceCall call,
      $async.Future<$4.ManageAdminRequest> request) async {
    return demoteGroupAdmin(call, await request);
  }

  $async.Future<$0.Empty> banFromGroup_Pre($grpc.ServiceCall call,
      $async.Future<$4.ManageGroupOrChannelRequest> request) async {
    return banFromGroup(call, await request);
  }

  $async.Future<$0.Empty> unbanFromGroup_Pre($grpc.ServiceCall call,
      $async.Future<$4.ManageGroupOrChannelRequest> request) async {
    return unbanFromGroup(call, await request);
  }

  $async.Future<$4.Channel> createChannel(
      $grpc.ServiceCall call, $4.CreateChannelRequest request);
  $async.Future<$4.Channel> getChannel(
      $grpc.ServiceCall call, $2.StringValue request);
  $async.Stream<$4.ChannelList> getChannelsForGroup(
      $grpc.ServiceCall call, $2.StringValue request);
  $async.Future<$4.Channel> updateChannel(
      $grpc.ServiceCall call, $4.Channel request);
  $async.Future<$0.Empty> deleteChannel(
      $grpc.ServiceCall call, $2.StringValue request);
  $async.Future<$0.Empty> leaveChannel(
      $grpc.ServiceCall call, $4.ManageGroupOrChannel request);
  $async.Future<$0.Empty> subscribeToChannel(
      $grpc.ServiceCall call, $4.ChannelSubscriptionRequest request);
  $async.Future<$0.Empty> unsubscribeFromChannel(
      $grpc.ServiceCall call, $4.ChannelSubscriptionRequest request);
  $async.Future<$0.Empty> manageChannelSubscription(
      $grpc.ServiceCall call, $4.ManageChannelSubscriptionRequest request);
  $async.Stream<$4.ChannelSubscriptionList> getChannelSubscriptionsForUser(
      $grpc.ServiceCall call, $2.StringValue request);
  $async.Future<$0.Empty> muteChannel(
      $grpc.ServiceCall call, $4.ManageGroupOrChannelRequest request);
  $async.Future<$0.Empty> unmuteChannel(
      $grpc.ServiceCall call, $4.ManageGroupOrChannelRequest request);
  $async.Future<$4.Group> createGroup(
      $grpc.ServiceCall call, $4.CreateGroupRequest request);
  $async.Future<$4.Group> getGroup(
      $grpc.ServiceCall call, $2.StringValue request);
  $async.Stream<$4.GroupList> getGroups(
      $grpc.ServiceCall call, $2.StringValue request);
  $async.Future<$4.Group> updateGroup($grpc.ServiceCall call, $4.Group request);
  $async.Future<$0.Empty> deleteGroup(
      $grpc.ServiceCall call, $4.DeleteGroupRequest request);
  $async.Future<$0.Empty> leaveGroup(
      $grpc.ServiceCall call, $4.ManageGroupOrChannel request);
  $async.Future<$0.Empty> inviteToGroup(
      $grpc.ServiceCall call, $4.GroupInviteRequest request);
  $async.Stream<$4.GroupInviteList> getGroupInvitesForUser(
      $grpc.ServiceCall call, $2.StringValue request);
  $async.Stream<$4.GroupInviteList> getGroupInvitesForGroup(
      $grpc.ServiceCall call, $2.StringValue request);
  $async.Future<$0.Empty> revokeGroupInvite(
      $grpc.ServiceCall call, $4.RevokeGroupInviteRequest request);
  $async.Future<$0.Empty> manageGroupInvite(
      $grpc.ServiceCall call, $4.ManageGroupInviteRequest request);
  $async.Future<$0.Empty> muteGroup(
      $grpc.ServiceCall call, $4.ManageGroupOrChannelRequest request);
  $async.Future<$0.Empty> unmuteGroup(
      $grpc.ServiceCall call, $4.ManageGroupOrChannelRequest request);
  $async.Future<$0.Empty> promoteGroupAdmin(
      $grpc.ServiceCall call, $4.ManageAdminRequest request);
  $async.Future<$0.Empty> demoteGroupAdmin(
      $grpc.ServiceCall call, $4.ManageAdminRequest request);
  $async.Future<$0.Empty> banFromGroup(
      $grpc.ServiceCall call, $4.ManageGroupOrChannelRequest request);
  $async.Future<$0.Empty> unbanFromGroup(
      $grpc.ServiceCall call, $4.ManageGroupOrChannelRequest request);
}
