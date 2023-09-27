//
//  Generated code. Do not modify.
//  source: common.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// A filter on a specific duration of time.
class DateFilter extends $pb.ProtobufEnum {
  static const DateFilter TODAY = DateFilter._(0, _omitEnumNames ? '' : 'TODAY');
  static const DateFilter YESTERDAY = DateFilter._(1, _omitEnumNames ? '' : 'YESTERDAY');
  static const DateFilter LAST_7_DAYS = DateFilter._(2, _omitEnumNames ? '' : 'LAST_7_DAYS');
  static const DateFilter LAST_30_DAYS = DateFilter._(3, _omitEnumNames ? '' : 'LAST_30_DAYS');
  static const DateFilter LAST_90_DAYS = DateFilter._(4, _omitEnumNames ? '' : 'LAST_90_DAYS');
  static const DateFilter LAST_180_DAYS = DateFilter._(5, _omitEnumNames ? '' : 'LAST_180_DAYS');
  static const DateFilter LAST_365_DAYS = DateFilter._(6, _omitEnumNames ? '' : 'LAST_365_DAYS');
  static const DateFilter ALL_TIME = DateFilter._(7, _omitEnumNames ? '' : 'ALL_TIME');

  static const $core.List<DateFilter> values = <DateFilter> [
    TODAY,
    YESTERDAY,
    LAST_7_DAYS,
    LAST_30_DAYS,
    LAST_90_DAYS,
    LAST_180_DAYS,
    LAST_365_DAYS,
    ALL_TIME,
  ];

  static final $core.Map<$core.int, DateFilter> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DateFilter? valueOf($core.int value) => _byValue[value];

  const DateFilter._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
