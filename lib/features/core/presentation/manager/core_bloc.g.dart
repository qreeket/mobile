// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CoreBlocStateCWProxy {
  CoreBlocState dm(DirectMessenger? dm);

  CoreBlocState channel(Channel? channel);

  CoreBlocState group(Group? group);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CoreBlocState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CoreBlocState(...).copyWith(id: 12, name: "My name")
  /// ````
  CoreBlocState call({
    DirectMessenger? dm,
    Channel? channel,
    Group? group,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCoreBlocState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCoreBlocState.copyWith.fieldName(...)`
class _$CoreBlocStateCWProxyImpl implements _$CoreBlocStateCWProxy {
  const _$CoreBlocStateCWProxyImpl(this._value);

  final CoreBlocState _value;

  @override
  CoreBlocState dm(DirectMessenger? dm) => this(dm: dm);

  @override
  CoreBlocState channel(Channel? channel) => this(channel: channel);

  @override
  CoreBlocState group(Group? group) => this(group: group);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CoreBlocState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CoreBlocState(...).copyWith(id: 12, name: "My name")
  /// ````
  CoreBlocState call({
    Object? dm = const $CopyWithPlaceholder(),
    Object? channel = const $CopyWithPlaceholder(),
    Object? group = const $CopyWithPlaceholder(),
  }) {
    return CoreBlocState(
      dm: dm == const $CopyWithPlaceholder()
          ? _value.dm
          // ignore: cast_nullable_to_non_nullable
          : dm as DirectMessenger?,
      channel: channel == const $CopyWithPlaceholder()
          ? _value.channel
          // ignore: cast_nullable_to_non_nullable
          : channel as Channel?,
      group: group == const $CopyWithPlaceholder()
          ? _value.group
          // ignore: cast_nullable_to_non_nullable
          : group as Group?,
    );
  }
}

extension $CoreBlocStateCopyWith on CoreBlocState {
  /// Returns a callable class that can be used as follows: `instanceOfCoreBlocState.copyWith(...)` or like so:`instanceOfCoreBlocState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CoreBlocStateCWProxy get copyWith => _$CoreBlocStateCWProxyImpl(this);
}
