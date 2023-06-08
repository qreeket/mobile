///
//  Generated code. Do not modify.
//  source: group.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ChannelType extends $pb.ProtobufEnum {
  static const ChannelType public = ChannelType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'public');
  static const ChannelType private = ChannelType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'private');

  static const $core.List<ChannelType> values = <ChannelType> [
    public,
    private,
  ];

  static final $core.Map<$core.int, ChannelType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ChannelType? valueOf($core.int value) => _byValue[value];

  const ChannelType._($core.int v, $core.String n) : super(v, n);
}

class ChannelOrGroupInviteStatus extends $pb.ProtobufEnum {
  static const ChannelOrGroupInviteStatus pending = ChannelOrGroupInviteStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'pending');
  static const ChannelOrGroupInviteStatus accepted = ChannelOrGroupInviteStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'accepted');
  static const ChannelOrGroupInviteStatus declined = ChannelOrGroupInviteStatus._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'declined');

  static const $core.List<ChannelOrGroupInviteStatus> values = <ChannelOrGroupInviteStatus> [
    pending,
    accepted,
    declined,
  ];

  static final $core.Map<$core.int, ChannelOrGroupInviteStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ChannelOrGroupInviteStatus? valueOf($core.int value) => _byValue[value];

  const ChannelOrGroupInviteStatus._($core.int v, $core.String n) : super(v, n);
}

