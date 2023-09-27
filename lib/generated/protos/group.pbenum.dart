//
//  Generated code. Do not modify.
//  source: group.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ChannelType extends $pb.ProtobufEnum {
  static const ChannelType public = ChannelType._(0, _omitEnumNames ? '' : 'public');
  static const ChannelType private = ChannelType._(1, _omitEnumNames ? '' : 'private');

  static const $core.List<ChannelType> values = <ChannelType> [
    public,
    private,
  ];

  static final $core.Map<$core.int, ChannelType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ChannelType? valueOf($core.int value) => _byValue[value];

  const ChannelType._($core.int v, $core.String n) : super(v, n);
}

class ChannelOrGroupInviteStatus extends $pb.ProtobufEnum {
  static const ChannelOrGroupInviteStatus pending = ChannelOrGroupInviteStatus._(0, _omitEnumNames ? '' : 'pending');
  static const ChannelOrGroupInviteStatus accepted = ChannelOrGroupInviteStatus._(1, _omitEnumNames ? '' : 'accepted');
  static const ChannelOrGroupInviteStatus declined = ChannelOrGroupInviteStatus._(2, _omitEnumNames ? '' : 'declined');

  static const $core.List<ChannelOrGroupInviteStatus> values = <ChannelOrGroupInviteStatus> [
    pending,
    accepted,
    declined,
  ];

  static final $core.Map<$core.int, ChannelOrGroupInviteStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ChannelOrGroupInviteStatus? valueOf($core.int value) => _byValue[value];

  const ChannelOrGroupInviteStatus._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
