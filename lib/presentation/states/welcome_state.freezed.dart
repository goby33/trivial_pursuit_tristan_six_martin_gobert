// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'welcome_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WelcomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) initial,
    required TResult Function(String path) pictureChosen,
    required TResult Function(String path) loading,
    required TResult Function() uploaded,
    required TResult Function(DateTime dateTime, String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? initial,
    TResult? Function(String path)? pictureChosen,
    TResult? Function(String path)? loading,
    TResult? Function()? uploaded,
    TResult? Function(DateTime dateTime, String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? initial,
    TResult Function(String path)? pictureChosen,
    TResult Function(String path)? loading,
    TResult Function()? uploaded,
    TResult Function(DateTime dateTime, String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WelcomeStateInitial value) initial,
    required TResult Function(WelcomeStatePictureChoosen value) pictureChosen,
    required TResult Function(WelcomeStateLoading value) loading,
    required TResult Function(WelcomeStateUploaded value) uploaded,
    required TResult Function(WelcomeStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WelcomeStateInitial value)? initial,
    TResult? Function(WelcomeStatePictureChoosen value)? pictureChosen,
    TResult? Function(WelcomeStateLoading value)? loading,
    TResult? Function(WelcomeStateUploaded value)? uploaded,
    TResult? Function(WelcomeStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WelcomeStateInitial value)? initial,
    TResult Function(WelcomeStatePictureChoosen value)? pictureChosen,
    TResult Function(WelcomeStateLoading value)? loading,
    TResult Function(WelcomeStateUploaded value)? uploaded,
    TResult Function(WelcomeStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WelcomeStateCopyWith<$Res> {
  factory $WelcomeStateCopyWith(
          WelcomeState value, $Res Function(WelcomeState) then) =
      _$WelcomeStateCopyWithImpl<$Res, WelcomeState>;
}

/// @nodoc
class _$WelcomeStateCopyWithImpl<$Res, $Val extends WelcomeState>
    implements $WelcomeStateCopyWith<$Res> {
  _$WelcomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WelcomeStateInitialCopyWith<$Res> {
  factory _$$WelcomeStateInitialCopyWith(_$WelcomeStateInitial value,
          $Res Function(_$WelcomeStateInitial) then) =
      __$$WelcomeStateInitialCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$WelcomeStateInitialCopyWithImpl<$Res>
    extends _$WelcomeStateCopyWithImpl<$Res, _$WelcomeStateInitial>
    implements _$$WelcomeStateInitialCopyWith<$Res> {
  __$$WelcomeStateInitialCopyWithImpl(
      _$WelcomeStateInitial _value, $Res Function(_$WelcomeStateInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$WelcomeStateInitial(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WelcomeStateInitial extends WelcomeStateInitial {
  _$WelcomeStateInitial({required this.path}) : super._();

  @override
  final String path;

  @override
  String toString() {
    return 'WelcomeState.initial(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WelcomeStateInitial &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WelcomeStateInitialCopyWith<_$WelcomeStateInitial> get copyWith =>
      __$$WelcomeStateInitialCopyWithImpl<_$WelcomeStateInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) initial,
    required TResult Function(String path) pictureChosen,
    required TResult Function(String path) loading,
    required TResult Function() uploaded,
    required TResult Function(DateTime dateTime, String message) failed,
  }) {
    return initial(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? initial,
    TResult? Function(String path)? pictureChosen,
    TResult? Function(String path)? loading,
    TResult? Function()? uploaded,
    TResult? Function(DateTime dateTime, String message)? failed,
  }) {
    return initial?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? initial,
    TResult Function(String path)? pictureChosen,
    TResult Function(String path)? loading,
    TResult Function()? uploaded,
    TResult Function(DateTime dateTime, String message)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WelcomeStateInitial value) initial,
    required TResult Function(WelcomeStatePictureChoosen value) pictureChosen,
    required TResult Function(WelcomeStateLoading value) loading,
    required TResult Function(WelcomeStateUploaded value) uploaded,
    required TResult Function(WelcomeStateFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WelcomeStateInitial value)? initial,
    TResult? Function(WelcomeStatePictureChoosen value)? pictureChosen,
    TResult? Function(WelcomeStateLoading value)? loading,
    TResult? Function(WelcomeStateUploaded value)? uploaded,
    TResult? Function(WelcomeStateFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WelcomeStateInitial value)? initial,
    TResult Function(WelcomeStatePictureChoosen value)? pictureChosen,
    TResult Function(WelcomeStateLoading value)? loading,
    TResult Function(WelcomeStateUploaded value)? uploaded,
    TResult Function(WelcomeStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class WelcomeStateInitial extends WelcomeState {
  factory WelcomeStateInitial({required final String path}) =
      _$WelcomeStateInitial;
  WelcomeStateInitial._() : super._();

  String get path;
  @JsonKey(ignore: true)
  _$$WelcomeStateInitialCopyWith<_$WelcomeStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WelcomeStatePictureChoosenCopyWith<$Res> {
  factory _$$WelcomeStatePictureChoosenCopyWith(
          _$WelcomeStatePictureChoosen value,
          $Res Function(_$WelcomeStatePictureChoosen) then) =
      __$$WelcomeStatePictureChoosenCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$WelcomeStatePictureChoosenCopyWithImpl<$Res>
    extends _$WelcomeStateCopyWithImpl<$Res, _$WelcomeStatePictureChoosen>
    implements _$$WelcomeStatePictureChoosenCopyWith<$Res> {
  __$$WelcomeStatePictureChoosenCopyWithImpl(
      _$WelcomeStatePictureChoosen _value,
      $Res Function(_$WelcomeStatePictureChoosen) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$WelcomeStatePictureChoosen(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WelcomeStatePictureChoosen extends WelcomeStatePictureChoosen {
  _$WelcomeStatePictureChoosen({required this.path}) : super._();

  @override
  final String path;

  @override
  String toString() {
    return 'WelcomeState.pictureChosen(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WelcomeStatePictureChoosen &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WelcomeStatePictureChoosenCopyWith<_$WelcomeStatePictureChoosen>
      get copyWith => __$$WelcomeStatePictureChoosenCopyWithImpl<
          _$WelcomeStatePictureChoosen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) initial,
    required TResult Function(String path) pictureChosen,
    required TResult Function(String path) loading,
    required TResult Function() uploaded,
    required TResult Function(DateTime dateTime, String message) failed,
  }) {
    return pictureChosen(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? initial,
    TResult? Function(String path)? pictureChosen,
    TResult? Function(String path)? loading,
    TResult? Function()? uploaded,
    TResult? Function(DateTime dateTime, String message)? failed,
  }) {
    return pictureChosen?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? initial,
    TResult Function(String path)? pictureChosen,
    TResult Function(String path)? loading,
    TResult Function()? uploaded,
    TResult Function(DateTime dateTime, String message)? failed,
    required TResult orElse(),
  }) {
    if (pictureChosen != null) {
      return pictureChosen(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WelcomeStateInitial value) initial,
    required TResult Function(WelcomeStatePictureChoosen value) pictureChosen,
    required TResult Function(WelcomeStateLoading value) loading,
    required TResult Function(WelcomeStateUploaded value) uploaded,
    required TResult Function(WelcomeStateFailed value) failed,
  }) {
    return pictureChosen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WelcomeStateInitial value)? initial,
    TResult? Function(WelcomeStatePictureChoosen value)? pictureChosen,
    TResult? Function(WelcomeStateLoading value)? loading,
    TResult? Function(WelcomeStateUploaded value)? uploaded,
    TResult? Function(WelcomeStateFailed value)? failed,
  }) {
    return pictureChosen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WelcomeStateInitial value)? initial,
    TResult Function(WelcomeStatePictureChoosen value)? pictureChosen,
    TResult Function(WelcomeStateLoading value)? loading,
    TResult Function(WelcomeStateUploaded value)? uploaded,
    TResult Function(WelcomeStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (pictureChosen != null) {
      return pictureChosen(this);
    }
    return orElse();
  }
}

abstract class WelcomeStatePictureChoosen extends WelcomeState {
  factory WelcomeStatePictureChoosen({required final String path}) =
      _$WelcomeStatePictureChoosen;
  WelcomeStatePictureChoosen._() : super._();

  String get path;
  @JsonKey(ignore: true)
  _$$WelcomeStatePictureChoosenCopyWith<_$WelcomeStatePictureChoosen>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WelcomeStateLoadingCopyWith<$Res> {
  factory _$$WelcomeStateLoadingCopyWith(_$WelcomeStateLoading value,
          $Res Function(_$WelcomeStateLoading) then) =
      __$$WelcomeStateLoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$WelcomeStateLoadingCopyWithImpl<$Res>
    extends _$WelcomeStateCopyWithImpl<$Res, _$WelcomeStateLoading>
    implements _$$WelcomeStateLoadingCopyWith<$Res> {
  __$$WelcomeStateLoadingCopyWithImpl(
      _$WelcomeStateLoading _value, $Res Function(_$WelcomeStateLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$WelcomeStateLoading(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WelcomeStateLoading extends WelcomeStateLoading {
  _$WelcomeStateLoading({required this.path}) : super._();

  @override
  final String path;

  @override
  String toString() {
    return 'WelcomeState.loading(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WelcomeStateLoading &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WelcomeStateLoadingCopyWith<_$WelcomeStateLoading> get copyWith =>
      __$$WelcomeStateLoadingCopyWithImpl<_$WelcomeStateLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) initial,
    required TResult Function(String path) pictureChosen,
    required TResult Function(String path) loading,
    required TResult Function() uploaded,
    required TResult Function(DateTime dateTime, String message) failed,
  }) {
    return loading(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? initial,
    TResult? Function(String path)? pictureChosen,
    TResult? Function(String path)? loading,
    TResult? Function()? uploaded,
    TResult? Function(DateTime dateTime, String message)? failed,
  }) {
    return loading?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? initial,
    TResult Function(String path)? pictureChosen,
    TResult Function(String path)? loading,
    TResult Function()? uploaded,
    TResult Function(DateTime dateTime, String message)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WelcomeStateInitial value) initial,
    required TResult Function(WelcomeStatePictureChoosen value) pictureChosen,
    required TResult Function(WelcomeStateLoading value) loading,
    required TResult Function(WelcomeStateUploaded value) uploaded,
    required TResult Function(WelcomeStateFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WelcomeStateInitial value)? initial,
    TResult? Function(WelcomeStatePictureChoosen value)? pictureChosen,
    TResult? Function(WelcomeStateLoading value)? loading,
    TResult? Function(WelcomeStateUploaded value)? uploaded,
    TResult? Function(WelcomeStateFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WelcomeStateInitial value)? initial,
    TResult Function(WelcomeStatePictureChoosen value)? pictureChosen,
    TResult Function(WelcomeStateLoading value)? loading,
    TResult Function(WelcomeStateUploaded value)? uploaded,
    TResult Function(WelcomeStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WelcomeStateLoading extends WelcomeState {
  factory WelcomeStateLoading({required final String path}) =
      _$WelcomeStateLoading;
  WelcomeStateLoading._() : super._();

  String get path;
  @JsonKey(ignore: true)
  _$$WelcomeStateLoadingCopyWith<_$WelcomeStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WelcomeStateUploadedCopyWith<$Res> {
  factory _$$WelcomeStateUploadedCopyWith(_$WelcomeStateUploaded value,
          $Res Function(_$WelcomeStateUploaded) then) =
      __$$WelcomeStateUploadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WelcomeStateUploadedCopyWithImpl<$Res>
    extends _$WelcomeStateCopyWithImpl<$Res, _$WelcomeStateUploaded>
    implements _$$WelcomeStateUploadedCopyWith<$Res> {
  __$$WelcomeStateUploadedCopyWithImpl(_$WelcomeStateUploaded _value,
      $Res Function(_$WelcomeStateUploaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WelcomeStateUploaded extends WelcomeStateUploaded {
  _$WelcomeStateUploaded() : super._();

  @override
  String toString() {
    return 'WelcomeState.uploaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WelcomeStateUploaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) initial,
    required TResult Function(String path) pictureChosen,
    required TResult Function(String path) loading,
    required TResult Function() uploaded,
    required TResult Function(DateTime dateTime, String message) failed,
  }) {
    return uploaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? initial,
    TResult? Function(String path)? pictureChosen,
    TResult? Function(String path)? loading,
    TResult? Function()? uploaded,
    TResult? Function(DateTime dateTime, String message)? failed,
  }) {
    return uploaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? initial,
    TResult Function(String path)? pictureChosen,
    TResult Function(String path)? loading,
    TResult Function()? uploaded,
    TResult Function(DateTime dateTime, String message)? failed,
    required TResult orElse(),
  }) {
    if (uploaded != null) {
      return uploaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WelcomeStateInitial value) initial,
    required TResult Function(WelcomeStatePictureChoosen value) pictureChosen,
    required TResult Function(WelcomeStateLoading value) loading,
    required TResult Function(WelcomeStateUploaded value) uploaded,
    required TResult Function(WelcomeStateFailed value) failed,
  }) {
    return uploaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WelcomeStateInitial value)? initial,
    TResult? Function(WelcomeStatePictureChoosen value)? pictureChosen,
    TResult? Function(WelcomeStateLoading value)? loading,
    TResult? Function(WelcomeStateUploaded value)? uploaded,
    TResult? Function(WelcomeStateFailed value)? failed,
  }) {
    return uploaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WelcomeStateInitial value)? initial,
    TResult Function(WelcomeStatePictureChoosen value)? pictureChosen,
    TResult Function(WelcomeStateLoading value)? loading,
    TResult Function(WelcomeStateUploaded value)? uploaded,
    TResult Function(WelcomeStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (uploaded != null) {
      return uploaded(this);
    }
    return orElse();
  }
}

abstract class WelcomeStateUploaded extends WelcomeState {
  factory WelcomeStateUploaded() = _$WelcomeStateUploaded;
  WelcomeStateUploaded._() : super._();
}

/// @nodoc
abstract class _$$WelcomeStateFailedCopyWith<$Res> {
  factory _$$WelcomeStateFailedCopyWith(_$WelcomeStateFailed value,
          $Res Function(_$WelcomeStateFailed) then) =
      __$$WelcomeStateFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateTime, String message});
}

/// @nodoc
class __$$WelcomeStateFailedCopyWithImpl<$Res>
    extends _$WelcomeStateCopyWithImpl<$Res, _$WelcomeStateFailed>
    implements _$$WelcomeStateFailedCopyWith<$Res> {
  __$$WelcomeStateFailedCopyWithImpl(
      _$WelcomeStateFailed _value, $Res Function(_$WelcomeStateFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? message = null,
  }) {
    return _then(_$WelcomeStateFailed(
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

class _$WelcomeStateFailed extends WelcomeStateFailed {
  _$WelcomeStateFailed({required this.dateTime, required this.message})
      : super._();

  @override
  final DateTime dateTime;
  @override
  final String message;

  @override
  String toString() {
    return 'WelcomeState.failed(dateTime: $dateTime, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WelcomeStateFailed &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WelcomeStateFailedCopyWith<_$WelcomeStateFailed> get copyWith =>
      __$$WelcomeStateFailedCopyWithImpl<_$WelcomeStateFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) initial,
    required TResult Function(String path) pictureChosen,
    required TResult Function(String path) loading,
    required TResult Function() uploaded,
    required TResult Function(DateTime dateTime, String message) failed,
  }) {
    return failed(dateTime, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? initial,
    TResult? Function(String path)? pictureChosen,
    TResult? Function(String path)? loading,
    TResult? Function()? uploaded,
    TResult? Function(DateTime dateTime, String message)? failed,
  }) {
    return failed?.call(dateTime, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? initial,
    TResult Function(String path)? pictureChosen,
    TResult Function(String path)? loading,
    TResult Function()? uploaded,
    TResult Function(DateTime dateTime, String message)? failed,
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
    required TResult Function(WelcomeStateInitial value) initial,
    required TResult Function(WelcomeStatePictureChoosen value) pictureChosen,
    required TResult Function(WelcomeStateLoading value) loading,
    required TResult Function(WelcomeStateUploaded value) uploaded,
    required TResult Function(WelcomeStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WelcomeStateInitial value)? initial,
    TResult? Function(WelcomeStatePictureChoosen value)? pictureChosen,
    TResult? Function(WelcomeStateLoading value)? loading,
    TResult? Function(WelcomeStateUploaded value)? uploaded,
    TResult? Function(WelcomeStateFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WelcomeStateInitial value)? initial,
    TResult Function(WelcomeStatePictureChoosen value)? pictureChosen,
    TResult Function(WelcomeStateLoading value)? loading,
    TResult Function(WelcomeStateUploaded value)? uploaded,
    TResult Function(WelcomeStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class WelcomeStateFailed extends WelcomeState {
  factory WelcomeStateFailed(
      {required final DateTime dateTime,
      required final String message}) = _$WelcomeStateFailed;
  WelcomeStateFailed._() : super._();

  DateTime get dateTime;
  String get message;
  @JsonKey(ignore: true)
  _$$WelcomeStateFailedCopyWith<_$WelcomeStateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
