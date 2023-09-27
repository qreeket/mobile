//
//  Generated code. Do not modify.
//  source: gateway.proto
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

import 'announcement.pb.dart' as $1;
import 'auth.pb.dart' as $4;
import 'billing.pb.dart' as $6;
import 'common.pb.dart' as $0;
import 'group.pb.dart' as $3;
import 'media.pb.dart' as $5;
import 'messaging.pb.dart' as $7;
import 'sms.pb.dart' as $2;

export 'gateway.pb.dart';

@$pb.GrpcServiceName('qreeket.QreeketGatewayService')
class QreeketGatewayServiceClient extends $grpc.Client {
  static final _$getAnnouncements = $grpc.ClientMethod<$0.Empty, $1.AnnouncementsList>(
      '/qreeket.QreeketGatewayService/GetAnnouncements',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.AnnouncementsList.fromBuffer(value));
  static final _$getAnnouncement = $grpc.ClientMethod<$0.StringValue, $1.Announcement>(
      '/qreeket.QreeketGatewayService/GetAnnouncement',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Announcement.fromBuffer(value));
  static final _$createAnnouncement = $grpc.ClientMethod<$1.CreateAnnouncementRequest, $1.Announcement>(
      '/qreeket.QreeketGatewayService/CreateAnnouncement',
      ($1.CreateAnnouncementRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Announcement.fromBuffer(value));
  static final _$updateAnnouncement = $grpc.ClientMethod<$1.UpdateAnnouncementRequest, $1.Announcement>(
      '/qreeket.QreeketGatewayService/UpdateAnnouncement',
      ($1.UpdateAnnouncementRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Announcement.fromBuffer(value));
  static final _$deleteAnnouncement = $grpc.ClientMethod<$0.StringValue, $0.Empty>(
      '/qreeket.QreeketGatewayService/DeleteAnnouncement',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$subscribeToAnnouncements = $grpc.ClientMethod<$0.StringValue, $0.Empty>(
      '/qreeket.QreeketGatewayService/SubscribeToAnnouncements',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$unsubscribeFromAnnouncements = $grpc.ClientMethod<$0.StringValue, $0.Empty>(
      '/qreeket.QreeketGatewayService/UnsubscribeFromAnnouncements',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$login = $grpc.ClientMethod<$4.LoginRequest, $0.StringValue>(
      '/qreeket.QreeketGatewayService/login',
      ($4.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value));
  static final _$register = $grpc.ClientMethod<$4.RegisterRequest, $0.StringValue>(
      '/qreeket.QreeketGatewayService/register',
      ($4.RegisterRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value));
  static final _$reset_password = $grpc.ClientMethod<$4.ResetPasswordRequest, $0.StringValue>(
      '/qreeket.QreeketGatewayService/reset_password',
      ($4.ResetPasswordRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value));
  static final _$request_password_reset = $grpc.ClientMethod<$4.RequestPasswordResetRequest, $0.StringValue>(
      '/qreeket.QreeketGatewayService/request_password_reset',
      ($4.RequestPasswordResetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value));
  static final _$logout = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/qreeket.QreeketGatewayService/logout',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$verify_password = $grpc.ClientMethod<$0.StringValue, $0.Empty>(
      '/qreeket.QreeketGatewayService/verify_password',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$upgrade_to_premium = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/qreeket.QreeketGatewayService/upgrade_to_premium',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$downgrade_to_standard = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/qreeket.QreeketGatewayService/downgrade_to_standard',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$request_public_access_token = $grpc.ClientMethod<$0.Empty, $0.StringValue>(
      '/qreeket.QreeketGatewayService/request_public_access_token',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value));
  static final _$validate_access_token = $grpc.ClientMethod<$0.Empty, $4.ValidateAccessTokenResponse>(
      '/qreeket.QreeketGatewayService/validate_access_token',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ValidateAccessTokenResponse.fromBuffer(value));
  static final _$get_account = $grpc.ClientMethod<$0.Empty, $4.Account>(
      '/qreeket.QreeketGatewayService/get_account',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.Account.fromBuffer(value));
  static final _$get_account_by_phone_number = $grpc.ClientMethod<$0.StringValue, $4.Account>(
      '/qreeket.QreeketGatewayService/get_account_by_phone_number',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.Account.fromBuffer(value));
  static final _$get_account_by_id = $grpc.ClientMethod<$0.StringValue, $4.Account>(
      '/qreeket.QreeketGatewayService/get_account_by_id',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.Account.fromBuffer(value));
  static final _$update_account = $grpc.ClientMethod<$4.Account, $4.Account>(
      '/qreeket.QreeketGatewayService/update_account',
      ($4.Account value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.Account.fromBuffer(value));
  static final _$delete_account = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/qreeket.QreeketGatewayService/delete_account',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$authenticate_account = $grpc.ClientMethod<$4.AuthenticateWithSocialAccountRequest, $0.StringValue>(
      '/qreeket.QreeketGatewayService/authenticate_account',
      ($4.AuthenticateWithSocialAccountRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value));
  static final _$check_email = $grpc.ClientMethod<$0.StringValue, $0.Empty>(
      '/qreeket.QreeketGatewayService/check_email',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$check_phone_number = $grpc.ClientMethod<$0.StringValue, $0.Empty>(
      '/qreeket.QreeketGatewayService/check_phone_number',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$get_countries = $grpc.ClientMethod<$0.Empty, $4.GetCountriesResponse>(
      '/qreeket.QreeketGatewayService/get_countries',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetCountriesResponse.fromBuffer(value));
  static final _$get_country_by_id = $grpc.ClientMethod<$0.StringValue, $4.Country>(
      '/qreeket.QreeketGatewayService/get_country_by_id',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.Country.fromBuffer(value));
  static final _$add_country = $grpc.ClientMethod<$4.Country, $4.Country>(
      '/qreeket.QreeketGatewayService/add_country',
      ($4.Country value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.Country.fromBuffer(value));
  static final _$delete_country = $grpc.ClientMethod<$0.StringValue, $0.Empty>(
      '/qreeket.QreeketGatewayService/delete_country',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$get_colleges_for_country = $grpc.ClientMethod<$0.StringValue, $4.GetCollegesResponse>(
      '/qreeket.QreeketGatewayService/get_colleges_for_country',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetCollegesResponse.fromBuffer(value));
  static final _$get_college_by_id = $grpc.ClientMethod<$0.StringValue, $4.College>(
      '/qreeket.QreeketGatewayService/get_college_by_id',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.College.fromBuffer(value));
  static final _$add_college = $grpc.ClientMethod<$4.College, $4.College>(
      '/qreeket.QreeketGatewayService/add_college',
      ($4.College value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.College.fromBuffer(value));
  static final _$delete_college = $grpc.ClientMethod<$0.StringValue, $0.Empty>(
      '/qreeket.QreeketGatewayService/delete_college',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$charge = $grpc.ClientMethod<$6.ChargeRequest, $6.ChargeResponse>(
      '/qreeket.QreeketGatewayService/charge',
      ($6.ChargeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ChargeResponse.fromBuffer(value));
  static final _$get_transaction = $grpc.ClientMethod<$0.StringValue, $6.Transaction>(
      '/qreeket.QreeketGatewayService/get_transaction',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.Transaction.fromBuffer(value));
  static final _$list_transactions = $grpc.ClientMethod<$0.Duration, $6.ListTransactionsResponse>(
      '/qreeket.QreeketGatewayService/list_transactions',
      ($0.Duration value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ListTransactionsResponse.fromBuffer(value));
  static final _$delete_transaction = $grpc.ClientMethod<$0.StringValue, $0.Empty>(
      '/qreeket.QreeketGatewayService/delete_transaction',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$createChannel = $grpc.ClientMethod<$3.CreateChannelRequest, $3.Channel>(
      '/qreeket.QreeketGatewayService/createChannel',
      ($3.CreateChannelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Channel.fromBuffer(value));
  static final _$getChannel = $grpc.ClientMethod<$0.StringValue, $3.Channel>(
      '/qreeket.QreeketGatewayService/getChannel',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Channel.fromBuffer(value));
  static final _$getChannelsForGroup = $grpc.ClientMethod<$0.StringValue, $3.ChannelList>(
      '/qreeket.QreeketGatewayService/getChannelsForGroup',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ChannelList.fromBuffer(value));
  static final _$updateChannel = $grpc.ClientMethod<$3.Channel, $3.Channel>(
      '/qreeket.QreeketGatewayService/updateChannel',
      ($3.Channel value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Channel.fromBuffer(value));
  static final _$deleteChannel = $grpc.ClientMethod<$0.StringValue, $0.Empty>(
      '/qreeket.QreeketGatewayService/deleteChannel',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$leaveChannel = $grpc.ClientMethod<$3.ManageGroupOrChannel, $0.Empty>(
      '/qreeket.QreeketGatewayService/leaveChannel',
      ($3.ManageGroupOrChannel value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$subscribeToChannel = $grpc.ClientMethod<$3.ChannelSubscriptionRequest, $0.Empty>(
      '/qreeket.QreeketGatewayService/subscribeToChannel',
      ($3.ChannelSubscriptionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$unsubscribeFromChannel = $grpc.ClientMethod<$3.ChannelSubscriptionRequest, $0.Empty>(
      '/qreeket.QreeketGatewayService/unsubscribeFromChannel',
      ($3.ChannelSubscriptionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$manageChannelSubscription = $grpc.ClientMethod<$3.ManageChannelSubscriptionRequest, $0.Empty>(
      '/qreeket.QreeketGatewayService/manageChannelSubscription',
      ($3.ManageChannelSubscriptionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getChannelSubscriptionsForUser = $grpc.ClientMethod<$0.StringValue, $3.ChannelSubscriptionList>(
      '/qreeket.QreeketGatewayService/getChannelSubscriptionsForUser',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ChannelSubscriptionList.fromBuffer(value));
  static final _$muteChannel = $grpc.ClientMethod<$3.ManageGroupOrChannelRequest, $0.Empty>(
      '/qreeket.QreeketGatewayService/muteChannel',
      ($3.ManageGroupOrChannelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$unmuteChannel = $grpc.ClientMethod<$3.ManageGroupOrChannelRequest, $0.Empty>(
      '/qreeket.QreeketGatewayService/unmuteChannel',
      ($3.ManageGroupOrChannelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$createGroup = $grpc.ClientMethod<$3.CreateGroupRequest, $3.Group>(
      '/qreeket.QreeketGatewayService/createGroup',
      ($3.CreateGroupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Group.fromBuffer(value));
  static final _$getGroup = $grpc.ClientMethod<$0.StringValue, $3.Group>(
      '/qreeket.QreeketGatewayService/getGroup',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Group.fromBuffer(value));
  static final _$getGroups = $grpc.ClientMethod<$0.StringValue, $3.GroupList>(
      '/qreeket.QreeketGatewayService/getGroups',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GroupList.fromBuffer(value));
  static final _$updateGroup = $grpc.ClientMethod<$3.Group, $3.Group>(
      '/qreeket.QreeketGatewayService/updateGroup',
      ($3.Group value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Group.fromBuffer(value));
  static final _$deleteGroup = $grpc.ClientMethod<$3.DeleteGroupRequest, $0.Empty>(
      '/qreeket.QreeketGatewayService/deleteGroup',
      ($3.DeleteGroupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$leaveGroup = $grpc.ClientMethod<$3.ManageGroupOrChannel, $0.Empty>(
      '/qreeket.QreeketGatewayService/leaveGroup',
      ($3.ManageGroupOrChannel value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$inviteToGroup = $grpc.ClientMethod<$3.GroupInviteRequest, $0.Empty>(
      '/qreeket.QreeketGatewayService/inviteToGroup',
      ($3.GroupInviteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getGroupInvitesForUser = $grpc.ClientMethod<$0.StringValue, $3.GroupInviteList>(
      '/qreeket.QreeketGatewayService/getGroupInvitesForUser',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GroupInviteList.fromBuffer(value));
  static final _$getGroupInvitesForGroup = $grpc.ClientMethod<$0.StringValue, $3.GroupInviteList>(
      '/qreeket.QreeketGatewayService/getGroupInvitesForGroup',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GroupInviteList.fromBuffer(value));
  static final _$revokeGroupInvite = $grpc.ClientMethod<$3.RevokeGroupInviteRequest, $0.Empty>(
      '/qreeket.QreeketGatewayService/revokeGroupInvite',
      ($3.RevokeGroupInviteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$manageGroupInvite = $grpc.ClientMethod<$3.ManageGroupInviteRequest, $0.Empty>(
      '/qreeket.QreeketGatewayService/manageGroupInvite',
      ($3.ManageGroupInviteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$muteGroup = $grpc.ClientMethod<$3.ManageGroupOrChannelRequest, $0.Empty>(
      '/qreeket.QreeketGatewayService/muteGroup',
      ($3.ManageGroupOrChannelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$unmuteGroup = $grpc.ClientMethod<$3.ManageGroupOrChannelRequest, $0.Empty>(
      '/qreeket.QreeketGatewayService/unmuteGroup',
      ($3.ManageGroupOrChannelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$promoteGroupAdmin = $grpc.ClientMethod<$3.ManageAdminRequest, $0.Empty>(
      '/qreeket.QreeketGatewayService/promoteGroupAdmin',
      ($3.ManageAdminRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$demoteGroupAdmin = $grpc.ClientMethod<$3.ManageAdminRequest, $0.Empty>(
      '/qreeket.QreeketGatewayService/demoteGroupAdmin',
      ($3.ManageAdminRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$banFromGroup = $grpc.ClientMethod<$3.ManageGroupOrChannelRequest, $0.Empty>(
      '/qreeket.QreeketGatewayService/banFromGroup',
      ($3.ManageGroupOrChannelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$unbanFromGroup = $grpc.ClientMethod<$3.ManageGroupOrChannelRequest, $0.Empty>(
      '/qreeket.QreeketGatewayService/unbanFromGroup',
      ($3.ManageGroupOrChannelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$upload_media = $grpc.ClientMethod<$5.UploadMediaRequest, $5.UploadMediaResponse>(
      '/qreeket.QreeketGatewayService/upload_media',
      ($5.UploadMediaRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UploadMediaResponse.fromBuffer(value));
  static final _$upload_large_media = $grpc.ClientMethod<$5.UploadMediaRequest, $5.UploadMediaResponse>(
      '/qreeket.QreeketGatewayService/upload_large_media',
      ($5.UploadMediaRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UploadMediaResponse.fromBuffer(value));
  static final _$get_media = $grpc.ClientMethod<$0.StringValue, $0.StringValue>(
      '/qreeket.QreeketGatewayService/get_media',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value));
  static final _$delete_media = $grpc.ClientMethod<$0.StringValue, $0.Empty>(
      '/qreeket.QreeketGatewayService/delete_media',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$sendMessage = $grpc.ClientMethod<$7.MessageListItem, $7.MessageListItem>(
      '/qreeket.QreeketGatewayService/sendMessage',
      ($7.MessageListItem value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.MessageListItem.fromBuffer(value));
  static final _$deleteMessage = $grpc.ClientMethod<$0.StringValue, $0.Empty>(
      '/qreeket.QreeketGatewayService/deleteMessage',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getMessages = $grpc.ClientMethod<$7.GetMessagesRequest, $7.MessageList>(
      '/qreeket.QreeketGatewayService/getMessages',
      ($7.GetMessagesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.MessageList.fromBuffer(value));
  static final _$editMessage = $grpc.ClientMethod<$7.MessageListItem, $7.MessageListItem>(
      '/qreeket.QreeketGatewayService/editMessage',
      ($7.MessageListItem value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.MessageListItem.fromBuffer(value));
  static final _$reactToMessage = $grpc.ClientMethod<$0.StringValue, $7.MessageListItem>(
      '/qreeket.QreeketGatewayService/reactToMessage',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.MessageListItem.fromBuffer(value));
  static final _$createThread = $grpc.ClientMethod<$7.MessageListItem, $7.MessageListItem>(
      '/qreeket.QreeketGatewayService/createThread',
      ($7.MessageListItem value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.MessageListItem.fromBuffer(value));
  static final _$deleteThread = $grpc.ClientMethod<$0.StringValue, $0.Empty>(
      '/qreeket.QreeketGatewayService/deleteThread',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getThreads = $grpc.ClientMethod<$7.GetMessagesRequest, $7.MessageList>(
      '/qreeket.QreeketGatewayService/getThreads',
      ($7.GetMessagesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.MessageList.fromBuffer(value));
  static final _$editThread = $grpc.ClientMethod<$7.MessageListItem, $7.MessageListItem>(
      '/qreeket.QreeketGatewayService/editThread',
      ($7.MessageListItem value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.MessageListItem.fromBuffer(value));
  static final _$reactToThread = $grpc.ClientMethod<$0.StringValue, $7.MessageListItem>(
      '/qreeket.QreeketGatewayService/reactToThread',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.MessageListItem.fromBuffer(value));
  static final _$getDirectMessengers = $grpc.ClientMethod<$0.Empty, $7.DirectMessengerList>(
      '/qreeket.QreeketGatewayService/getDirectMessengers',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.DirectMessengerList.fromBuffer(value));
  static final _$getDirectMessages = $grpc.ClientMethod<$7.GetMessagesRequest, $7.MessageList>(
      '/qreeket.QreeketGatewayService/getDirectMessages',
      ($7.GetMessagesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.MessageList.fromBuffer(value));
  static final _$addDirectMessenger = $grpc.ClientMethod<$0.StringValue, $7.DirectMessenger>(
      '/qreeket.QreeketGatewayService/addDirectMessenger',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.DirectMessenger.fromBuffer(value));
  static final _$removeDirectMessenger = $grpc.ClientMethod<$0.StringValue, $0.Empty>(
      '/qreeket.QreeketGatewayService/removeDirectMessenger',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$send_phone_verification_code = $grpc.ClientMethod<$0.StringValue, $0.Empty>(
      '/qreeket.QreeketGatewayService/send_phone_verification_code',
      ($0.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$verify_phone_verification_code = $grpc.ClientMethod<$2.VerifyPhoneRequest, $0.Empty>(
      '/qreeket.QreeketGatewayService/verify_phone_verification_code',
      ($2.VerifyPhoneRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  QreeketGatewayServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$1.AnnouncementsList> getAnnouncements($0.Empty request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getAnnouncements, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$1.Announcement> getAnnouncement($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAnnouncement, request, options: options);
  }

  $grpc.ResponseFuture<$1.Announcement> createAnnouncement($1.CreateAnnouncementRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createAnnouncement, request, options: options);
  }

  $grpc.ResponseFuture<$1.Announcement> updateAnnouncement($1.UpdateAnnouncementRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateAnnouncement, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteAnnouncement($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteAnnouncement, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> subscribeToAnnouncements($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$subscribeToAnnouncements, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> unsubscribeFromAnnouncements($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unsubscribeFromAnnouncements, request, options: options);
  }

  $grpc.ResponseFuture<$0.StringValue> login($4.LoginRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$0.StringValue> register($4.RegisterRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$register, request, options: options);
  }

  $grpc.ResponseFuture<$0.StringValue> reset_password($4.ResetPasswordRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$reset_password, request, options: options);
  }

  $grpc.ResponseFuture<$0.StringValue> request_password_reset($4.RequestPasswordResetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$request_password_reset, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> logout($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$logout, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> verify_password($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verify_password, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> upgrade_to_premium($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$upgrade_to_premium, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> downgrade_to_standard($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$downgrade_to_standard, request, options: options);
  }

  $grpc.ResponseFuture<$0.StringValue> request_public_access_token($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$request_public_access_token, request, options: options);
  }

  $grpc.ResponseFuture<$4.ValidateAccessTokenResponse> validate_access_token($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validate_access_token, request, options: options);
  }

  $grpc.ResponseFuture<$4.Account> get_account($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get_account, request, options: options);
  }

  $grpc.ResponseFuture<$4.Account> get_account_by_phone_number($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get_account_by_phone_number, request, options: options);
  }

  $grpc.ResponseFuture<$4.Account> get_account_by_id($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get_account_by_id, request, options: options);
  }

  $grpc.ResponseFuture<$4.Account> update_account($4.Account request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update_account, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> delete_account($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete_account, request, options: options);
  }

  $grpc.ResponseFuture<$0.StringValue> authenticate_account($4.AuthenticateWithSocialAccountRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticate_account, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> check_email($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$check_email, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> check_phone_number($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$check_phone_number, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetCountriesResponse> get_countries($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get_countries, request, options: options);
  }

  $grpc.ResponseFuture<$4.Country> get_country_by_id($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get_country_by_id, request, options: options);
  }

  $grpc.ResponseFuture<$4.Country> add_country($4.Country request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$add_country, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> delete_country($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete_country, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetCollegesResponse> get_colleges_for_country($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get_colleges_for_country, request, options: options);
  }

  $grpc.ResponseFuture<$4.College> get_college_by_id($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get_college_by_id, request, options: options);
  }

  $grpc.ResponseFuture<$4.College> add_college($4.College request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$add_college, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> delete_college($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete_college, request, options: options);
  }

  $grpc.ResponseFuture<$6.ChargeResponse> charge($6.ChargeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$charge, request, options: options);
  }

  $grpc.ResponseFuture<$6.Transaction> get_transaction($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get_transaction, request, options: options);
  }

  $grpc.ResponseFuture<$6.ListTransactionsResponse> list_transactions($0.Duration request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list_transactions, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> delete_transaction($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete_transaction, request, options: options);
  }

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

  $grpc.ResponseFuture<$5.UploadMediaResponse> upload_media($5.UploadMediaRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$upload_media, request, options: options);
  }

  $grpc.ResponseFuture<$5.UploadMediaResponse> upload_large_media($async.Stream<$5.UploadMediaRequest> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$upload_large_media, request, options: options).single;
  }

  $grpc.ResponseFuture<$0.StringValue> get_media($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get_media, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> delete_media($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete_media, request, options: options);
  }

  $grpc.ResponseFuture<$7.MessageListItem> sendMessage($7.MessageListItem request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendMessage, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteMessage($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteMessage, request, options: options);
  }

  $grpc.ResponseStream<$7.MessageList> getMessages($7.GetMessagesRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getMessages, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$7.MessageListItem> editMessage($7.MessageListItem request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editMessage, request, options: options);
  }

  $grpc.ResponseFuture<$7.MessageListItem> reactToMessage($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$reactToMessage, request, options: options);
  }

  $grpc.ResponseFuture<$7.MessageListItem> createThread($7.MessageListItem request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createThread, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteThread($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteThread, request, options: options);
  }

  $grpc.ResponseStream<$7.MessageList> getThreads($7.GetMessagesRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getThreads, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$7.MessageListItem> editThread($7.MessageListItem request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editThread, request, options: options);
  }

  $grpc.ResponseFuture<$7.MessageListItem> reactToThread($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$reactToThread, request, options: options);
  }

  $grpc.ResponseStream<$7.DirectMessengerList> getDirectMessengers($0.Empty request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getDirectMessengers, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$7.MessageList> getDirectMessages($7.GetMessagesRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getDirectMessages, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$7.DirectMessenger> addDirectMessenger($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addDirectMessenger, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> removeDirectMessenger($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeDirectMessenger, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> send_phone_verification_code($0.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$send_phone_verification_code, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> verify_phone_verification_code($2.VerifyPhoneRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verify_phone_verification_code, request, options: options);
  }
}

@$pb.GrpcServiceName('qreeket.QreeketGatewayService')
abstract class QreeketGatewayServiceBase extends $grpc.Service {
  $core.String get $name => 'qreeket.QreeketGatewayService';

  QreeketGatewayServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.AnnouncementsList>(
        'GetAnnouncements',
        getAnnouncements_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.AnnouncementsList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $1.Announcement>(
        'GetAnnouncement',
        getAnnouncement_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($1.Announcement value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CreateAnnouncementRequest, $1.Announcement>(
        'CreateAnnouncement',
        createAnnouncement_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CreateAnnouncementRequest.fromBuffer(value),
        ($1.Announcement value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateAnnouncementRequest, $1.Announcement>(
        'UpdateAnnouncement',
        updateAnnouncement_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UpdateAnnouncementRequest.fromBuffer(value),
        ($1.Announcement value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.Empty>(
        'DeleteAnnouncement',
        deleteAnnouncement_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.Empty>(
        'SubscribeToAnnouncements',
        subscribeToAnnouncements_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.Empty>(
        'UnsubscribeFromAnnouncements',
        unsubscribeFromAnnouncements_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.LoginRequest, $0.StringValue>(
        'login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.LoginRequest.fromBuffer(value),
        ($0.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.RegisterRequest, $0.StringValue>(
        'register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.RegisterRequest.fromBuffer(value),
        ($0.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ResetPasswordRequest, $0.StringValue>(
        'reset_password',
        reset_password_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ResetPasswordRequest.fromBuffer(value),
        ($0.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.RequestPasswordResetRequest, $0.StringValue>(
        'request_password_reset',
        request_password_reset_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.RequestPasswordResetRequest.fromBuffer(value),
        ($0.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'logout',
        logout_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.Empty>(
        'verify_password',
        verify_password_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'upgrade_to_premium',
        upgrade_to_premium_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'downgrade_to_standard',
        downgrade_to_standard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.StringValue>(
        'request_public_access_token',
        request_public_access_token_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $4.ValidateAccessTokenResponse>(
        'validate_access_token',
        validate_access_token_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($4.ValidateAccessTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $4.Account>(
        'get_account',
        get_account_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($4.Account value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $4.Account>(
        'get_account_by_phone_number',
        get_account_by_phone_number_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($4.Account value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $4.Account>(
        'get_account_by_id',
        get_account_by_id_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($4.Account value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.Account, $4.Account>(
        'update_account',
        update_account_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.Account.fromBuffer(value),
        ($4.Account value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'delete_account',
        delete_account_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AuthenticateWithSocialAccountRequest, $0.StringValue>(
        'authenticate_account',
        authenticate_account_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.AuthenticateWithSocialAccountRequest.fromBuffer(value),
        ($0.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.Empty>(
        'check_email',
        check_email_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.Empty>(
        'check_phone_number',
        check_phone_number_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $4.GetCountriesResponse>(
        'get_countries',
        get_countries_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($4.GetCountriesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $4.Country>(
        'get_country_by_id',
        get_country_by_id_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($4.Country value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.Country, $4.Country>(
        'add_country',
        add_country_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.Country.fromBuffer(value),
        ($4.Country value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.Empty>(
        'delete_country',
        delete_country_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $4.GetCollegesResponse>(
        'get_colleges_for_country',
        get_colleges_for_country_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($4.GetCollegesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $4.College>(
        'get_college_by_id',
        get_college_by_id_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($4.College value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.College, $4.College>(
        'add_college',
        add_college_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.College.fromBuffer(value),
        ($4.College value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.Empty>(
        'delete_college',
        delete_college_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ChargeRequest, $6.ChargeResponse>(
        'charge',
        charge_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ChargeRequest.fromBuffer(value),
        ($6.ChargeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $6.Transaction>(
        'get_transaction',
        get_transaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($6.Transaction value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Duration, $6.ListTransactionsResponse>(
        'list_transactions',
        list_transactions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Duration.fromBuffer(value),
        ($6.ListTransactionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.Empty>(
        'delete_transaction',
        delete_transaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$5.UploadMediaRequest, $5.UploadMediaResponse>(
        'upload_media',
        upload_media_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UploadMediaRequest.fromBuffer(value),
        ($5.UploadMediaResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UploadMediaRequest, $5.UploadMediaResponse>(
        'upload_large_media',
        upload_large_media,
        true,
        false,
        ($core.List<$core.int> value) => $5.UploadMediaRequest.fromBuffer(value),
        ($5.UploadMediaResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.StringValue>(
        'get_media',
        get_media_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.Empty>(
        'delete_media',
        delete_media_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.MessageListItem, $7.MessageListItem>(
        'sendMessage',
        sendMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.MessageListItem.fromBuffer(value),
        ($7.MessageListItem value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.Empty>(
        'deleteMessage',
        deleteMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetMessagesRequest, $7.MessageList>(
        'getMessages',
        getMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $7.GetMessagesRequest.fromBuffer(value),
        ($7.MessageList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.MessageListItem, $7.MessageListItem>(
        'editMessage',
        editMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.MessageListItem.fromBuffer(value),
        ($7.MessageListItem value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $7.MessageListItem>(
        'reactToMessage',
        reactToMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($7.MessageListItem value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.MessageListItem, $7.MessageListItem>(
        'createThread',
        createThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.MessageListItem.fromBuffer(value),
        ($7.MessageListItem value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.Empty>(
        'deleteThread',
        deleteThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetMessagesRequest, $7.MessageList>(
        'getThreads',
        getThreads_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $7.GetMessagesRequest.fromBuffer(value),
        ($7.MessageList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.MessageListItem, $7.MessageListItem>(
        'editThread',
        editThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.MessageListItem.fromBuffer(value),
        ($7.MessageListItem value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $7.MessageListItem>(
        'reactToThread',
        reactToThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($7.MessageListItem value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $7.DirectMessengerList>(
        'getDirectMessengers',
        getDirectMessengers_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($7.DirectMessengerList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetMessagesRequest, $7.MessageList>(
        'getDirectMessages',
        getDirectMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $7.GetMessagesRequest.fromBuffer(value),
        ($7.MessageList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $7.DirectMessenger>(
        'addDirectMessenger',
        addDirectMessenger_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($7.DirectMessenger value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.Empty>(
        'removeDirectMessenger',
        removeDirectMessenger_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringValue, $0.Empty>(
        'send_phone_verification_code',
        send_phone_verification_code_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StringValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.VerifyPhoneRequest, $0.Empty>(
        'verify_phone_verification_code',
        verify_phone_verification_code_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.VerifyPhoneRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Stream<$1.AnnouncementsList> getAnnouncements_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* getAnnouncements(call, await request);
  }

  $async.Future<$1.Announcement> getAnnouncement_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return getAnnouncement(call, await request);
  }

  $async.Future<$1.Announcement> createAnnouncement_Pre($grpc.ServiceCall call, $async.Future<$1.CreateAnnouncementRequest> request) async {
    return createAnnouncement(call, await request);
  }

  $async.Future<$1.Announcement> updateAnnouncement_Pre($grpc.ServiceCall call, $async.Future<$1.UpdateAnnouncementRequest> request) async {
    return updateAnnouncement(call, await request);
  }

  $async.Future<$0.Empty> deleteAnnouncement_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return deleteAnnouncement(call, await request);
  }

  $async.Future<$0.Empty> subscribeToAnnouncements_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return subscribeToAnnouncements(call, await request);
  }

  $async.Future<$0.Empty> unsubscribeFromAnnouncements_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return unsubscribeFromAnnouncements(call, await request);
  }

  $async.Future<$0.StringValue> login_Pre($grpc.ServiceCall call, $async.Future<$4.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$0.StringValue> register_Pre($grpc.ServiceCall call, $async.Future<$4.RegisterRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$0.StringValue> reset_password_Pre($grpc.ServiceCall call, $async.Future<$4.ResetPasswordRequest> request) async {
    return reset_password(call, await request);
  }

  $async.Future<$0.StringValue> request_password_reset_Pre($grpc.ServiceCall call, $async.Future<$4.RequestPasswordResetRequest> request) async {
    return request_password_reset(call, await request);
  }

  $async.Future<$0.Empty> logout_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return logout(call, await request);
  }

  $async.Future<$0.Empty> verify_password_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return verify_password(call, await request);
  }

  $async.Future<$0.Empty> upgrade_to_premium_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return upgrade_to_premium(call, await request);
  }

  $async.Future<$0.Empty> downgrade_to_standard_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return downgrade_to_standard(call, await request);
  }

  $async.Future<$0.StringValue> request_public_access_token_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return request_public_access_token(call, await request);
  }

  $async.Future<$4.ValidateAccessTokenResponse> validate_access_token_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return validate_access_token(call, await request);
  }

  $async.Future<$4.Account> get_account_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return get_account(call, await request);
  }

  $async.Future<$4.Account> get_account_by_phone_number_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return get_account_by_phone_number(call, await request);
  }

  $async.Future<$4.Account> get_account_by_id_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return get_account_by_id(call, await request);
  }

  $async.Future<$4.Account> update_account_Pre($grpc.ServiceCall call, $async.Future<$4.Account> request) async {
    return update_account(call, await request);
  }

  $async.Future<$0.Empty> delete_account_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return delete_account(call, await request);
  }

  $async.Future<$0.StringValue> authenticate_account_Pre($grpc.ServiceCall call, $async.Future<$4.AuthenticateWithSocialAccountRequest> request) async {
    return authenticate_account(call, await request);
  }

  $async.Future<$0.Empty> check_email_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return check_email(call, await request);
  }

  $async.Future<$0.Empty> check_phone_number_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return check_phone_number(call, await request);
  }

  $async.Future<$4.GetCountriesResponse> get_countries_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return get_countries(call, await request);
  }

  $async.Future<$4.Country> get_country_by_id_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return get_country_by_id(call, await request);
  }

  $async.Future<$4.Country> add_country_Pre($grpc.ServiceCall call, $async.Future<$4.Country> request) async {
    return add_country(call, await request);
  }

  $async.Future<$0.Empty> delete_country_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return delete_country(call, await request);
  }

  $async.Future<$4.GetCollegesResponse> get_colleges_for_country_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return get_colleges_for_country(call, await request);
  }

  $async.Future<$4.College> get_college_by_id_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return get_college_by_id(call, await request);
  }

  $async.Future<$4.College> add_college_Pre($grpc.ServiceCall call, $async.Future<$4.College> request) async {
    return add_college(call, await request);
  }

  $async.Future<$0.Empty> delete_college_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return delete_college(call, await request);
  }

  $async.Future<$6.ChargeResponse> charge_Pre($grpc.ServiceCall call, $async.Future<$6.ChargeRequest> request) async {
    return charge(call, await request);
  }

  $async.Future<$6.Transaction> get_transaction_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return get_transaction(call, await request);
  }

  $async.Future<$6.ListTransactionsResponse> list_transactions_Pre($grpc.ServiceCall call, $async.Future<$0.Duration> request) async {
    return list_transactions(call, await request);
  }

  $async.Future<$0.Empty> delete_transaction_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return delete_transaction(call, await request);
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

  $async.Future<$5.UploadMediaResponse> upload_media_Pre($grpc.ServiceCall call, $async.Future<$5.UploadMediaRequest> request) async {
    return upload_media(call, await request);
  }

  $async.Future<$0.StringValue> get_media_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return get_media(call, await request);
  }

  $async.Future<$0.Empty> delete_media_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return delete_media(call, await request);
  }

  $async.Future<$7.MessageListItem> sendMessage_Pre($grpc.ServiceCall call, $async.Future<$7.MessageListItem> request) async {
    return sendMessage(call, await request);
  }

  $async.Future<$0.Empty> deleteMessage_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return deleteMessage(call, await request);
  }

  $async.Stream<$7.MessageList> getMessages_Pre($grpc.ServiceCall call, $async.Future<$7.GetMessagesRequest> request) async* {
    yield* getMessages(call, await request);
  }

  $async.Future<$7.MessageListItem> editMessage_Pre($grpc.ServiceCall call, $async.Future<$7.MessageListItem> request) async {
    return editMessage(call, await request);
  }

  $async.Future<$7.MessageListItem> reactToMessage_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return reactToMessage(call, await request);
  }

  $async.Future<$7.MessageListItem> createThread_Pre($grpc.ServiceCall call, $async.Future<$7.MessageListItem> request) async {
    return createThread(call, await request);
  }

  $async.Future<$0.Empty> deleteThread_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return deleteThread(call, await request);
  }

  $async.Stream<$7.MessageList> getThreads_Pre($grpc.ServiceCall call, $async.Future<$7.GetMessagesRequest> request) async* {
    yield* getThreads(call, await request);
  }

  $async.Future<$7.MessageListItem> editThread_Pre($grpc.ServiceCall call, $async.Future<$7.MessageListItem> request) async {
    return editThread(call, await request);
  }

  $async.Future<$7.MessageListItem> reactToThread_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return reactToThread(call, await request);
  }

  $async.Stream<$7.DirectMessengerList> getDirectMessengers_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* getDirectMessengers(call, await request);
  }

  $async.Stream<$7.MessageList> getDirectMessages_Pre($grpc.ServiceCall call, $async.Future<$7.GetMessagesRequest> request) async* {
    yield* getDirectMessages(call, await request);
  }

  $async.Future<$7.DirectMessenger> addDirectMessenger_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return addDirectMessenger(call, await request);
  }

  $async.Future<$0.Empty> removeDirectMessenger_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return removeDirectMessenger(call, await request);
  }

  $async.Future<$0.Empty> send_phone_verification_code_Pre($grpc.ServiceCall call, $async.Future<$0.StringValue> request) async {
    return send_phone_verification_code(call, await request);
  }

  $async.Future<$0.Empty> verify_phone_verification_code_Pre($grpc.ServiceCall call, $async.Future<$2.VerifyPhoneRequest> request) async {
    return verify_phone_verification_code(call, await request);
  }

  $async.Stream<$1.AnnouncementsList> getAnnouncements($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.Announcement> getAnnouncement($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$1.Announcement> createAnnouncement($grpc.ServiceCall call, $1.CreateAnnouncementRequest request);
  $async.Future<$1.Announcement> updateAnnouncement($grpc.ServiceCall call, $1.UpdateAnnouncementRequest request);
  $async.Future<$0.Empty> deleteAnnouncement($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$0.Empty> subscribeToAnnouncements($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$0.Empty> unsubscribeFromAnnouncements($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$0.StringValue> login($grpc.ServiceCall call, $4.LoginRequest request);
  $async.Future<$0.StringValue> register($grpc.ServiceCall call, $4.RegisterRequest request);
  $async.Future<$0.StringValue> reset_password($grpc.ServiceCall call, $4.ResetPasswordRequest request);
  $async.Future<$0.StringValue> request_password_reset($grpc.ServiceCall call, $4.RequestPasswordResetRequest request);
  $async.Future<$0.Empty> logout($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> verify_password($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$0.Empty> upgrade_to_premium($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> downgrade_to_standard($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.StringValue> request_public_access_token($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$4.ValidateAccessTokenResponse> validate_access_token($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$4.Account> get_account($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$4.Account> get_account_by_phone_number($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$4.Account> get_account_by_id($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$4.Account> update_account($grpc.ServiceCall call, $4.Account request);
  $async.Future<$0.Empty> delete_account($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.StringValue> authenticate_account($grpc.ServiceCall call, $4.AuthenticateWithSocialAccountRequest request);
  $async.Future<$0.Empty> check_email($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$0.Empty> check_phone_number($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$4.GetCountriesResponse> get_countries($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$4.Country> get_country_by_id($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$4.Country> add_country($grpc.ServiceCall call, $4.Country request);
  $async.Future<$0.Empty> delete_country($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$4.GetCollegesResponse> get_colleges_for_country($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$4.College> get_college_by_id($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$4.College> add_college($grpc.ServiceCall call, $4.College request);
  $async.Future<$0.Empty> delete_college($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$6.ChargeResponse> charge($grpc.ServiceCall call, $6.ChargeRequest request);
  $async.Future<$6.Transaction> get_transaction($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$6.ListTransactionsResponse> list_transactions($grpc.ServiceCall call, $0.Duration request);
  $async.Future<$0.Empty> delete_transaction($grpc.ServiceCall call, $0.StringValue request);
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
  $async.Future<$5.UploadMediaResponse> upload_media($grpc.ServiceCall call, $5.UploadMediaRequest request);
  $async.Future<$5.UploadMediaResponse> upload_large_media($grpc.ServiceCall call, $async.Stream<$5.UploadMediaRequest> request);
  $async.Future<$0.StringValue> get_media($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$0.Empty> delete_media($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$7.MessageListItem> sendMessage($grpc.ServiceCall call, $7.MessageListItem request);
  $async.Future<$0.Empty> deleteMessage($grpc.ServiceCall call, $0.StringValue request);
  $async.Stream<$7.MessageList> getMessages($grpc.ServiceCall call, $7.GetMessagesRequest request);
  $async.Future<$7.MessageListItem> editMessage($grpc.ServiceCall call, $7.MessageListItem request);
  $async.Future<$7.MessageListItem> reactToMessage($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$7.MessageListItem> createThread($grpc.ServiceCall call, $7.MessageListItem request);
  $async.Future<$0.Empty> deleteThread($grpc.ServiceCall call, $0.StringValue request);
  $async.Stream<$7.MessageList> getThreads($grpc.ServiceCall call, $7.GetMessagesRequest request);
  $async.Future<$7.MessageListItem> editThread($grpc.ServiceCall call, $7.MessageListItem request);
  $async.Future<$7.MessageListItem> reactToThread($grpc.ServiceCall call, $0.StringValue request);
  $async.Stream<$7.DirectMessengerList> getDirectMessengers($grpc.ServiceCall call, $0.Empty request);
  $async.Stream<$7.MessageList> getDirectMessages($grpc.ServiceCall call, $7.GetMessagesRequest request);
  $async.Future<$7.DirectMessenger> addDirectMessenger($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$0.Empty> removeDirectMessenger($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$0.Empty> send_phone_verification_code($grpc.ServiceCall call, $0.StringValue request);
  $async.Future<$0.Empty> verify_phone_verification_code($grpc.ServiceCall call, $2.VerifyPhoneRequest request);
}
