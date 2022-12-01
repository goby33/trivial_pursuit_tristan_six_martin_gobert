// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'jeux_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JeuxState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DateTime dateTime) loading,
    required TResult Function(JeuxPlayers partie) loaded,
    required TResult Function(String? failed) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTime dateTime)? loading,
    TResult? Function(JeuxPlayers partie)? loaded,
    TResult? Function(String? failed)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTime dateTime)? loading,
    TResult Function(JeuxPlayers partie)? loaded,
    TResult Function(String? failed)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JeuxStateInitial value) initial,
    required TResult Function(JeuxStateLoading value) loading,
    required TResult Function(JeuxStateLoaded value) loaded,
    required TResult Function(JeuxStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JeuxStateInitial value)? initial,
    TResult? Function(JeuxStateLoading value)? loading,
    TResult? Function(JeuxStateLoaded value)? loaded,
    TResult? Function(JeuxStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JeuxStateInitial value)? initial,
    TResult Function(JeuxStateLoading value)? loading,
    TResult Function(JeuxStateLoaded value)? loaded,
    TResult Function(JeuxStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JeuxStateCopyWith<$Res> {
  factory $JeuxStateCopyWith(JeuxState value, $Res Function(JeuxState) then) =
      _$JeuxStateCopyWithImpl<$Res, JeuxState>;
}

/// @nodoc
class _$JeuxStateCopyWithImpl<$Res, $Val extends JeuxState>
    implements $JeuxStateCopyWith<$Res> {
  _$JeuxStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$JeuxStateInitialCopyWith<$Res> {
  factory _$$JeuxStateInitialCopyWith(
          _$JeuxStateInitial value, $Res Function(_$JeuxStateInitial) then) =
      __$$JeuxStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$JeuxStateInitialCopyWithImpl<$Res>
    extends _$JeuxStateCopyWithImpl<$Res, _$JeuxStateInitial>
    implements _$$JeuxStateInitialCopyWith<$Res> {
  __$$JeuxStateInitialCopyWithImpl(
      _$JeuxStateInitial _value, $Res Function(_$JeuxStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$JeuxStateInitial extends JeuxStateInitial {
  _$JeuxStateInitial() : super._();

  @override
  String toString() {
    return 'JeuxState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$JeuxStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DateTime dateTime) loading,
    required TResult Function(JeuxPlayers partie) loaded,
    required TResult Function(String? failed) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTime dateTime)? loading,
    TResult? Function(JeuxPlayers partie)? loaded,
    TResult? Function(String? failed)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTime dateTime)? loading,
    TResult Function(JeuxPlayers partie)? loaded,
    TResult Function(String? failed)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JeuxStateInitial value) initial,
    required TResult Function(JeuxStateLoading value) loading,
    required TResult Function(JeuxStateLoaded value) loaded,
    required TResult Function(JeuxStateFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JeuxStateInitial value)? initial,
    TResult? Function(JeuxStateLoading value)? loading,
    TResult? Function(JeuxStateLoaded value)? loaded,
    TResult? Function(JeuxStateFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JeuxStateInitial value)? initial,
    TResult Function(JeuxStateLoading value)? loading,
    TResult Function(JeuxStateLoaded value)? loaded,
    TResult Function(JeuxStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class JeuxStateInitial extends JeuxState {
  factory JeuxStateInitial() = _$JeuxStateInitial;
  JeuxStateInitial._() : super._();
}

/// @nodoc
abstract class _$$JeuxStateLoadingCopyWith<$Res> {
  factory _$$JeuxStateLoadingCopyWith(
          _$JeuxStateLoading value, $Res Function(_$JeuxStateLoading) then) =
      __$$JeuxStateLoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateTime});
}

/// @nodoc
class __$$JeuxStateLoadingCopyWithImpl<$Res>
    extends _$JeuxStateCopyWithImpl<$Res, _$JeuxStateLoading>
    implements _$$JeuxStateLoadingCopyWith<$Res> {
  __$$JeuxStateLoadingCopyWithImpl(
      _$JeuxStateLoading _value, $Res Function(_$JeuxStateLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
  }) {
    return _then(_$JeuxStateLoading(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$JeuxStateLoading extends JeuxStateLoading {
  _$JeuxStateLoading({required this.dateTime}) : super._();

  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'JeuxState.loading(dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JeuxStateLoading &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JeuxStateLoadingCopyWith<_$JeuxStateLoading> get copyWith =>
      __$$JeuxStateLoadingCopyWithImpl<_$JeuxStateLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DateTime dateTime) loading,
    required TResult Function(JeuxPlayers partie) loaded,
    required TResult Function(String? failed) failed,
  }) {
    return loading(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTime dateTime)? loading,
    TResult? Function(JeuxPlayers partie)? loaded,
    TResult? Function(String? failed)? failed,
  }) {
    return loading?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTime dateTime)? loading,
    TResult Function(JeuxPlayers partie)? loaded,
    TResult Function(String? failed)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JeuxStateInitial value) initial,
    required TResult Function(JeuxStateLoading value) loading,
    required TResult Function(JeuxStateLoaded value) loaded,
    required TResult Function(JeuxStateFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JeuxStateInitial value)? initial,
    TResult? Function(JeuxStateLoading value)? loading,
    TResult? Function(JeuxStateLoaded value)? loaded,
    TResult? Function(JeuxStateFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JeuxStateInitial value)? initial,
    TResult Function(JeuxStateLoading value)? loading,
    TResult Function(JeuxStateLoaded value)? loaded,
    TResult Function(JeuxStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class JeuxStateLoading extends JeuxState {
  factory JeuxStateLoading({required final DateTime dateTime}) =
      _$JeuxStateLoading;
  JeuxStateLoading._() : super._();

  DateTime get dateTime;
  @JsonKey(ignore: true)
  _$$JeuxStateLoadingCopyWith<_$JeuxStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JeuxStateLoadedCopyWith<$Res> {
  factory _$$JeuxStateLoadedCopyWith(
          _$JeuxStateLoaded value, $Res Function(_$JeuxStateLoaded) then) =
      __$$JeuxStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({JeuxPlayers partie});
}

/// @nodoc
class __$$JeuxStateLoadedCopyWithImpl<$Res>
    extends _$JeuxStateCopyWithImpl<$Res, _$JeuxStateLoaded>
    implements _$$JeuxStateLoadedCopyWith<$Res> {
  __$$JeuxStateLoadedCopyWithImpl(
      _$JeuxStateLoaded _value, $Res Function(_$JeuxStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partie = null,
  }) {
    return _then(_$JeuxStateLoaded(
      partie: null == partie
          ? _value.partie
          : partie // ignore: cast_nullable_to_non_nullable
              as JeuxPlayers,
    ));
  }
}

/// @nodoc

class _$JeuxStateLoaded extends JeuxStateLoaded {
  _$JeuxStateLoaded({required this.partie}) : super._();

  @override
  final JeuxPlayers partie;

  @override
  String toString() {
    return 'JeuxState.loaded(partie: $partie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JeuxStateLoaded &&
            (identical(other.partie, partie) || other.partie == partie));
  }

  @override
  int get hashCode => Object.hash(runtimeType, partie);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JeuxStateLoadedCopyWith<_$JeuxStateLoaded> get copyWith =>
      __$$JeuxStateLoadedCopyWithImpl<_$JeuxStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DateTime dateTime) loading,
    required TResult Function(JeuxPlayers partie) loaded,
    required TResult Function(String? failed) failed,
  }) {
    return loaded(partie);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTime dateTime)? loading,
    TResult? Function(JeuxPlayers partie)? loaded,
    TResult? Function(String? failed)? failed,
  }) {
    return loaded?.call(partie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTime dateTime)? loading,
    TResult Function(JeuxPlayers partie)? loaded,
    TResult Function(String? failed)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(partie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JeuxStateInitial value) initial,
    required TResult Function(JeuxStateLoading value) loading,
    required TResult Function(JeuxStateLoaded value) loaded,
    required TResult Function(JeuxStateFailed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JeuxStateInitial value)? initial,
    TResult? Function(JeuxStateLoading value)? loading,
    TResult? Function(JeuxStateLoaded value)? loaded,
    TResult? Function(JeuxStateFailed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JeuxStateInitial value)? initial,
    TResult Function(JeuxStateLoading value)? loading,
    TResult Function(JeuxStateLoaded value)? loaded,
    TResult Function(JeuxStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class JeuxStateLoaded extends JeuxState {
  factory JeuxStateLoaded({required final JeuxPlayers partie}) =
      _$JeuxStateLoaded;
  JeuxStateLoaded._() : super._();

  JeuxPlayers get partie;
  @JsonKey(ignore: true)
  _$$JeuxStateLoadedCopyWith<_$JeuxStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JeuxStateFailedCopyWith<$Res> {
  factory _$$JeuxStateFailedCopyWith(
          _$JeuxStateFailed value, $Res Function(_$JeuxStateFailed) then) =
      __$$JeuxStateFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? failed});
}

/// @nodoc
class __$$JeuxStateFailedCopyWithImpl<$Res>
    extends _$JeuxStateCopyWithImpl<$Res, _$JeuxStateFailed>
    implements _$$JeuxStateFailedCopyWith<$Res> {
  __$$JeuxStateFailedCopyWithImpl(
      _$JeuxStateFailed _value, $Res Function(_$JeuxStateFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failed = freezed,
  }) {
    return _then(_$JeuxStateFailed(
      failed: freezed == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$JeuxStateFailed extends JeuxStateFailed {
  _$JeuxStateFailed({this.failed}) : super._();

  @override
  final String? failed;

  @override
  String toString() {
    return 'JeuxState.failed(failed: $failed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JeuxStateFailed &&
            (identical(other.failed, failed) || other.failed == failed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JeuxStateFailedCopyWith<_$JeuxStateFailed> get copyWith =>
      __$$JeuxStateFailedCopyWithImpl<_$JeuxStateFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DateTime dateTime) loading,
    required TResult Function(JeuxPlayers partie) loaded,
    required TResult Function(String? failed) failed,
  }) {
    return failed(this.failed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTime dateTime)? loading,
    TResult? Function(JeuxPlayers partie)? loaded,
    TResult? Function(String? failed)? failed,
  }) {
    return failed?.call(this.failed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTime dateTime)? loading,
    TResult Function(JeuxPlayers partie)? loaded,
    TResult Function(String? failed)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this.failed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JeuxStateInitial value) initial,
    required TResult Function(JeuxStateLoading value) loading,
    required TResult Function(JeuxStateLoaded value) loaded,
    required TResult Function(JeuxStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JeuxStateInitial value)? initial,
    TResult? Function(JeuxStateLoading value)? loading,
    TResult? Function(JeuxStateLoaded value)? loaded,
    TResult? Function(JeuxStateFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JeuxStateInitial value)? initial,
    TResult Function(JeuxStateLoading value)? loading,
    TResult Function(JeuxStateLoaded value)? loaded,
    TResult Function(JeuxStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class JeuxStateFailed extends JeuxState {
  factory JeuxStateFailed({final String? failed}) = _$JeuxStateFailed;
  JeuxStateFailed._() : super._();

  String? get failed;
  @JsonKey(ignore: true)
  _$$JeuxStateFailedCopyWith<_$JeuxStateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
