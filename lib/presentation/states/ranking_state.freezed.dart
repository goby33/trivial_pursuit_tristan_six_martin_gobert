// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ranking_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RankingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(DateTime dateTime, String message) failed,
    required TResult Function(List<UserModel>? listUsersModel) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(DateTime dateTime, String message)? failed,
    TResult? Function(List<UserModel>? listUsersModel)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(DateTime dateTime, String message)? failed,
    TResult Function(List<UserModel>? listUsersModel)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RankingStateLoading value) loading,
    required TResult Function(RankingStateFailed value) failed,
    required TResult Function(RankingStateReady value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RankingStateLoading value)? loading,
    TResult? Function(RankingStateFailed value)? failed,
    TResult? Function(RankingStateReady value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RankingStateLoading value)? loading,
    TResult Function(RankingStateFailed value)? failed,
    TResult Function(RankingStateReady value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankingStateCopyWith<$Res> {
  factory $RankingStateCopyWith(
          RankingState value, $Res Function(RankingState) then) =
      _$RankingStateCopyWithImpl<$Res, RankingState>;
}

/// @nodoc
class _$RankingStateCopyWithImpl<$Res, $Val extends RankingState>
    implements $RankingStateCopyWith<$Res> {
  _$RankingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RankingStateLoadingCopyWith<$Res> {
  factory _$$RankingStateLoadingCopyWith(_$RankingStateLoading value,
          $Res Function(_$RankingStateLoading) then) =
      __$$RankingStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RankingStateLoadingCopyWithImpl<$Res>
    extends _$RankingStateCopyWithImpl<$Res, _$RankingStateLoading>
    implements _$$RankingStateLoadingCopyWith<$Res> {
  __$$RankingStateLoadingCopyWithImpl(
      _$RankingStateLoading _value, $Res Function(_$RankingStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RankingStateLoading extends RankingStateLoading {
  _$RankingStateLoading() : super._();

  @override
  String toString() {
    return 'RankingState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RankingStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(DateTime dateTime, String message) failed,
    required TResult Function(List<UserModel>? listUsersModel) ready,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(DateTime dateTime, String message)? failed,
    TResult? Function(List<UserModel>? listUsersModel)? ready,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(DateTime dateTime, String message)? failed,
    TResult Function(List<UserModel>? listUsersModel)? ready,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RankingStateLoading value) loading,
    required TResult Function(RankingStateFailed value) failed,
    required TResult Function(RankingStateReady value) ready,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RankingStateLoading value)? loading,
    TResult? Function(RankingStateFailed value)? failed,
    TResult? Function(RankingStateReady value)? ready,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RankingStateLoading value)? loading,
    TResult Function(RankingStateFailed value)? failed,
    TResult Function(RankingStateReady value)? ready,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RankingStateLoading extends RankingState {
  factory RankingStateLoading() = _$RankingStateLoading;
  RankingStateLoading._() : super._();
}

/// @nodoc
abstract class _$$RankingStateFailedCopyWith<$Res> {
  factory _$$RankingStateFailedCopyWith(_$RankingStateFailed value,
          $Res Function(_$RankingStateFailed) then) =
      __$$RankingStateFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateTime, String message});
}

/// @nodoc
class __$$RankingStateFailedCopyWithImpl<$Res>
    extends _$RankingStateCopyWithImpl<$Res, _$RankingStateFailed>
    implements _$$RankingStateFailedCopyWith<$Res> {
  __$$RankingStateFailedCopyWithImpl(
      _$RankingStateFailed _value, $Res Function(_$RankingStateFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? message = null,
  }) {
    return _then(_$RankingStateFailed(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RankingStateFailed extends RankingStateFailed {
  _$RankingStateFailed({required this.dateTime, required this.message})
      : super._();

  @override
  final DateTime dateTime;
  @override
  final String message;

  @override
  String toString() {
    return 'RankingState.failed(dateTime: $dateTime, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RankingStateFailed &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RankingStateFailedCopyWith<_$RankingStateFailed> get copyWith =>
      __$$RankingStateFailedCopyWithImpl<_$RankingStateFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(DateTime dateTime, String message) failed,
    required TResult Function(List<UserModel>? listUsersModel) ready,
  }) {
    return failed(dateTime, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(DateTime dateTime, String message)? failed,
    TResult? Function(List<UserModel>? listUsersModel)? ready,
  }) {
    return failed?.call(dateTime, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(DateTime dateTime, String message)? failed,
    TResult Function(List<UserModel>? listUsersModel)? ready,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(dateTime, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RankingStateLoading value) loading,
    required TResult Function(RankingStateFailed value) failed,
    required TResult Function(RankingStateReady value) ready,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RankingStateLoading value)? loading,
    TResult? Function(RankingStateFailed value)? failed,
    TResult? Function(RankingStateReady value)? ready,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RankingStateLoading value)? loading,
    TResult Function(RankingStateFailed value)? failed,
    TResult Function(RankingStateReady value)? ready,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class RankingStateFailed extends RankingState {
  factory RankingStateFailed(
      {required final DateTime dateTime,
      required final String message}) = _$RankingStateFailed;
  RankingStateFailed._() : super._();

  DateTime get dateTime;
  String get message;
  @JsonKey(ignore: true)
  _$$RankingStateFailedCopyWith<_$RankingStateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RankingStateReadyCopyWith<$Res> {
  factory _$$RankingStateReadyCopyWith(
          _$RankingStateReady value, $Res Function(_$RankingStateReady) then) =
      __$$RankingStateReadyCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserModel>? listUsersModel});
}

/// @nodoc
class __$$RankingStateReadyCopyWithImpl<$Res>
    extends _$RankingStateCopyWithImpl<$Res, _$RankingStateReady>
    implements _$$RankingStateReadyCopyWith<$Res> {
  __$$RankingStateReadyCopyWithImpl(
      _$RankingStateReady _value, $Res Function(_$RankingStateReady) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listUsersModel = freezed,
  }) {
    return _then(_$RankingStateReady(
      listUsersModel: freezed == listUsersModel
          ? _value.listUsersModel
          : listUsersModel // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
    ));
  }
}

/// @nodoc

class _$RankingStateReady extends RankingStateReady {
  _$RankingStateReady({required this.listUsersModel}) : super._();

  @override
  final List<UserModel>? listUsersModel;

  @override
  String toString() {
    return 'RankingState.ready(listUsersModel: $listUsersModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RankingStateReady &&
            const DeepCollectionEquality()
                .equals(other.listUsersModel, listUsersModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listUsersModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RankingStateReadyCopyWith<_$RankingStateReady> get copyWith =>
      __$$RankingStateReadyCopyWithImpl<_$RankingStateReady>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(DateTime dateTime, String message) failed,
    required TResult Function(List<UserModel>? listUsersModel) ready,
  }) {
    return ready(listUsersModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(DateTime dateTime, String message)? failed,
    TResult? Function(List<UserModel>? listUsersModel)? ready,
  }) {
    return ready?.call(listUsersModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(DateTime dateTime, String message)? failed,
    TResult Function(List<UserModel>? listUsersModel)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(listUsersModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RankingStateLoading value) loading,
    required TResult Function(RankingStateFailed value) failed,
    required TResult Function(RankingStateReady value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RankingStateLoading value)? loading,
    TResult? Function(RankingStateFailed value)? failed,
    TResult? Function(RankingStateReady value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RankingStateLoading value)? loading,
    TResult Function(RankingStateFailed value)? failed,
    TResult Function(RankingStateReady value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class RankingStateReady extends RankingState {
  factory RankingStateReady({required final List<UserModel>? listUsersModel}) =
      _$RankingStateReady;
  RankingStateReady._() : super._();

  List<UserModel>? get listUsersModel;
  @JsonKey(ignore: true)
  _$$RankingStateReadyCopyWith<_$RankingStateReady> get copyWith =>
      throw _privateConstructorUsedError;
}
