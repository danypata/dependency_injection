// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() oneMoreFunFact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? oneMoreFunFact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? oneMoreFunFact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OneMorePlease value) oneMoreFunFact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OneMorePlease value)? oneMoreFunFact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OneMorePlease value)? oneMoreFunFact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$$OneMorePleaseCopyWith<$Res> {
  factory _$$OneMorePleaseCopyWith(
          _$OneMorePlease value, $Res Function(_$OneMorePlease) then) =
      __$$OneMorePleaseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OneMorePleaseCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$$OneMorePleaseCopyWith<$Res> {
  __$$OneMorePleaseCopyWithImpl(
      _$OneMorePlease _value, $Res Function(_$OneMorePlease) _then)
      : super(_value, (v) => _then(v as _$OneMorePlease));

  @override
  _$OneMorePlease get _value => super._value as _$OneMorePlease;
}

/// @nodoc

class _$OneMorePlease implements OneMorePlease {
  _$OneMorePlease();

  @override
  String toString() {
    return 'HomeEvent.oneMoreFunFact()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OneMorePlease);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() oneMoreFunFact,
  }) {
    return oneMoreFunFact();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? oneMoreFunFact,
  }) {
    return oneMoreFunFact?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? oneMoreFunFact,
    required TResult orElse(),
  }) {
    if (oneMoreFunFact != null) {
      return oneMoreFunFact();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OneMorePlease value) oneMoreFunFact,
  }) {
    return oneMoreFunFact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OneMorePlease value)? oneMoreFunFact,
  }) {
    return oneMoreFunFact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OneMorePlease value)? oneMoreFunFact,
    required TResult orElse(),
  }) {
    if (oneMoreFunFact != null) {
      return oneMoreFunFact(this);
    }
    return orElse();
  }
}

abstract class OneMorePlease implements HomeEvent {
  factory OneMorePlease() = _$OneMorePlease;
}
