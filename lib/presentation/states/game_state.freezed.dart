// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<QuestionModel> listQuestions, int index)
        loaded,
    required TResult Function(List<QuestionModel> listQuestions, int index)
        wrongAnswer,
    required TResult Function(List<QuestionModel> listQuestions, int index)
        rightAnswer,
    required TResult Function(String failed) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<QuestionModel> listQuestions, int index)? loaded,
    TResult? Function(List<QuestionModel> listQuestions, int index)?
        wrongAnswer,
    TResult? Function(List<QuestionModel> listQuestions, int index)?
        rightAnswer,
    TResult? Function(String failed)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<QuestionModel> listQuestions, int index)? loaded,
    TResult Function(List<QuestionModel> listQuestions, int index)? wrongAnswer,
    TResult Function(List<QuestionModel> listQuestions, int index)? rightAnswer,
    TResult Function(String failed)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateLoading value) loading,
    required TResult Function(GameStateLoaded value) loaded,
    required TResult Function(GameStateWrongAnswer value) wrongAnswer,
    required TResult Function(GameStateRightAnswer value) rightAnswer,
    required TResult Function(GameStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateLoading value)? loading,
    TResult? Function(GameStateLoaded value)? loaded,
    TResult? Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult? Function(GameStateRightAnswer value)? rightAnswer,
    TResult? Function(GameStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateLoading value)? loading,
    TResult Function(GameStateLoaded value)? loaded,
    TResult Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult Function(GameStateRightAnswer value)? rightAnswer,
    TResult Function(GameStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GameStateLoadingCopyWith<$Res> {
  factory _$$GameStateLoadingCopyWith(
          _$GameStateLoading value, $Res Function(_$GameStateLoading) then) =
      __$$GameStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameStateLoadingCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateLoading>
    implements _$$GameStateLoadingCopyWith<$Res> {
  __$$GameStateLoadingCopyWithImpl(
      _$GameStateLoading _value, $Res Function(_$GameStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GameStateLoading extends GameStateLoading {
  _$GameStateLoading() : super._();

  @override
  String toString() {
    return 'GameState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GameStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<QuestionModel> listQuestions, int index)
        loaded,
    required TResult Function(List<QuestionModel> listQuestions, int index)
        wrongAnswer,
    required TResult Function(List<QuestionModel> listQuestions, int index)
        rightAnswer,
    required TResult Function(String failed) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<QuestionModel> listQuestions, int index)? loaded,
    TResult? Function(List<QuestionModel> listQuestions, int index)?
        wrongAnswer,
    TResult? Function(List<QuestionModel> listQuestions, int index)?
        rightAnswer,
    TResult? Function(String failed)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<QuestionModel> listQuestions, int index)? loaded,
    TResult Function(List<QuestionModel> listQuestions, int index)? wrongAnswer,
    TResult Function(List<QuestionModel> listQuestions, int index)? rightAnswer,
    TResult Function(String failed)? failed,
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
    required TResult Function(GameStateLoading value) loading,
    required TResult Function(GameStateLoaded value) loaded,
    required TResult Function(GameStateWrongAnswer value) wrongAnswer,
    required TResult Function(GameStateRightAnswer value) rightAnswer,
    required TResult Function(GameStateFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateLoading value)? loading,
    TResult? Function(GameStateLoaded value)? loaded,
    TResult? Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult? Function(GameStateRightAnswer value)? rightAnswer,
    TResult? Function(GameStateFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateLoading value)? loading,
    TResult Function(GameStateLoaded value)? loaded,
    TResult Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult Function(GameStateRightAnswer value)? rightAnswer,
    TResult Function(GameStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GameStateLoading extends GameState {
  factory GameStateLoading() = _$GameStateLoading;
  GameStateLoading._() : super._();
}

/// @nodoc
abstract class _$$GameStateLoadedCopyWith<$Res> {
  factory _$$GameStateLoadedCopyWith(
          _$GameStateLoaded value, $Res Function(_$GameStateLoaded) then) =
      __$$GameStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<QuestionModel> listQuestions, int index});
}

/// @nodoc
class __$$GameStateLoadedCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateLoaded>
    implements _$$GameStateLoadedCopyWith<$Res> {
  __$$GameStateLoadedCopyWithImpl(
      _$GameStateLoaded _value, $Res Function(_$GameStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listQuestions = null,
    Object? index = null,
  }) {
    return _then(_$GameStateLoaded(
      listQuestions: null == listQuestions
          ? _value.listQuestions
          : listQuestions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GameStateLoaded extends GameStateLoaded {
  _$GameStateLoaded({required this.listQuestions, required this.index})
      : super._();

  @override
  final List<QuestionModel> listQuestions;
  @override
  final int index;

  @override
  String toString() {
    return 'GameState.loaded(listQuestions: $listQuestions, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateLoaded &&
            const DeepCollectionEquality()
                .equals(other.listQuestions, listQuestions) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listQuestions), index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateLoadedCopyWith<_$GameStateLoaded> get copyWith =>
      __$$GameStateLoadedCopyWithImpl<_$GameStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<QuestionModel> listQuestions, int index)
        loaded,
    required TResult Function(List<QuestionModel> listQuestions, int index)
        wrongAnswer,
    required TResult Function(List<QuestionModel> listQuestions, int index)
        rightAnswer,
    required TResult Function(String failed) failed,
  }) {
    return loaded(listQuestions, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<QuestionModel> listQuestions, int index)? loaded,
    TResult? Function(List<QuestionModel> listQuestions, int index)?
        wrongAnswer,
    TResult? Function(List<QuestionModel> listQuestions, int index)?
        rightAnswer,
    TResult? Function(String failed)? failed,
  }) {
    return loaded?.call(listQuestions, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<QuestionModel> listQuestions, int index)? loaded,
    TResult Function(List<QuestionModel> listQuestions, int index)? wrongAnswer,
    TResult Function(List<QuestionModel> listQuestions, int index)? rightAnswer,
    TResult Function(String failed)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(listQuestions, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateLoading value) loading,
    required TResult Function(GameStateLoaded value) loaded,
    required TResult Function(GameStateWrongAnswer value) wrongAnswer,
    required TResult Function(GameStateRightAnswer value) rightAnswer,
    required TResult Function(GameStateFailed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateLoading value)? loading,
    TResult? Function(GameStateLoaded value)? loaded,
    TResult? Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult? Function(GameStateRightAnswer value)? rightAnswer,
    TResult? Function(GameStateFailed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateLoading value)? loading,
    TResult Function(GameStateLoaded value)? loaded,
    TResult Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult Function(GameStateRightAnswer value)? rightAnswer,
    TResult Function(GameStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class GameStateLoaded extends GameState {
  factory GameStateLoaded(
      {required final List<QuestionModel> listQuestions,
      required final int index}) = _$GameStateLoaded;
  GameStateLoaded._() : super._();

  List<QuestionModel> get listQuestions;
  int get index;
  @JsonKey(ignore: true)
  _$$GameStateLoadedCopyWith<_$GameStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameStateWrongAnswerCopyWith<$Res> {
  factory _$$GameStateWrongAnswerCopyWith(_$GameStateWrongAnswer value,
          $Res Function(_$GameStateWrongAnswer) then) =
      __$$GameStateWrongAnswerCopyWithImpl<$Res>;
  @useResult
  $Res call({List<QuestionModel> listQuestions, int index});
}

/// @nodoc
class __$$GameStateWrongAnswerCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateWrongAnswer>
    implements _$$GameStateWrongAnswerCopyWith<$Res> {
  __$$GameStateWrongAnswerCopyWithImpl(_$GameStateWrongAnswer _value,
      $Res Function(_$GameStateWrongAnswer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listQuestions = null,
    Object? index = null,
  }) {
    return _then(_$GameStateWrongAnswer(
      listQuestions: null == listQuestions
          ? _value.listQuestions
          : listQuestions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GameStateWrongAnswer extends GameStateWrongAnswer {
  _$GameStateWrongAnswer({required this.listQuestions, required this.index})
      : super._();

  @override
  final List<QuestionModel> listQuestions;
  @override
  final int index;

  @override
  String toString() {
    return 'GameState.wrongAnswer(listQuestions: $listQuestions, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateWrongAnswer &&
            const DeepCollectionEquality()
                .equals(other.listQuestions, listQuestions) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listQuestions), index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateWrongAnswerCopyWith<_$GameStateWrongAnswer> get copyWith =>
      __$$GameStateWrongAnswerCopyWithImpl<_$GameStateWrongAnswer>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<QuestionModel> listQuestions, int index)
        loaded,
    required TResult Function(List<QuestionModel> listQuestions, int index)
        wrongAnswer,
    required TResult Function(List<QuestionModel> listQuestions, int index)
        rightAnswer,
    required TResult Function(String failed) failed,
  }) {
    return wrongAnswer(listQuestions, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<QuestionModel> listQuestions, int index)? loaded,
    TResult? Function(List<QuestionModel> listQuestions, int index)?
        wrongAnswer,
    TResult? Function(List<QuestionModel> listQuestions, int index)?
        rightAnswer,
    TResult? Function(String failed)? failed,
  }) {
    return wrongAnswer?.call(listQuestions, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<QuestionModel> listQuestions, int index)? loaded,
    TResult Function(List<QuestionModel> listQuestions, int index)? wrongAnswer,
    TResult Function(List<QuestionModel> listQuestions, int index)? rightAnswer,
    TResult Function(String failed)? failed,
    required TResult orElse(),
  }) {
    if (wrongAnswer != null) {
      return wrongAnswer(listQuestions, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateLoading value) loading,
    required TResult Function(GameStateLoaded value) loaded,
    required TResult Function(GameStateWrongAnswer value) wrongAnswer,
    required TResult Function(GameStateRightAnswer value) rightAnswer,
    required TResult Function(GameStateFailed value) failed,
  }) {
    return wrongAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateLoading value)? loading,
    TResult? Function(GameStateLoaded value)? loaded,
    TResult? Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult? Function(GameStateRightAnswer value)? rightAnswer,
    TResult? Function(GameStateFailed value)? failed,
  }) {
    return wrongAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateLoading value)? loading,
    TResult Function(GameStateLoaded value)? loaded,
    TResult Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult Function(GameStateRightAnswer value)? rightAnswer,
    TResult Function(GameStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (wrongAnswer != null) {
      return wrongAnswer(this);
    }
    return orElse();
  }
}

abstract class GameStateWrongAnswer extends GameState {
  factory GameStateWrongAnswer(
      {required final List<QuestionModel> listQuestions,
      required final int index}) = _$GameStateWrongAnswer;
  GameStateWrongAnswer._() : super._();

  List<QuestionModel> get listQuestions;
  int get index;
  @JsonKey(ignore: true)
  _$$GameStateWrongAnswerCopyWith<_$GameStateWrongAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameStateRightAnswerCopyWith<$Res> {
  factory _$$GameStateRightAnswerCopyWith(_$GameStateRightAnswer value,
          $Res Function(_$GameStateRightAnswer) then) =
      __$$GameStateRightAnswerCopyWithImpl<$Res>;
  @useResult
  $Res call({List<QuestionModel> listQuestions, int index});
}

/// @nodoc
class __$$GameStateRightAnswerCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateRightAnswer>
    implements _$$GameStateRightAnswerCopyWith<$Res> {
  __$$GameStateRightAnswerCopyWithImpl(_$GameStateRightAnswer _value,
      $Res Function(_$GameStateRightAnswer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listQuestions = null,
    Object? index = null,
  }) {
    return _then(_$GameStateRightAnswer(
      listQuestions: null == listQuestions
          ? _value.listQuestions
          : listQuestions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GameStateRightAnswer extends GameStateRightAnswer {
  _$GameStateRightAnswer({required this.listQuestions, required this.index})
      : super._();

  @override
  final List<QuestionModel> listQuestions;
  @override
  final int index;

  @override
  String toString() {
    return 'GameState.rightAnswer(listQuestions: $listQuestions, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateRightAnswer &&
            const DeepCollectionEquality()
                .equals(other.listQuestions, listQuestions) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listQuestions), index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateRightAnswerCopyWith<_$GameStateRightAnswer> get copyWith =>
      __$$GameStateRightAnswerCopyWithImpl<_$GameStateRightAnswer>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<QuestionModel> listQuestions, int index)
        loaded,
    required TResult Function(List<QuestionModel> listQuestions, int index)
        wrongAnswer,
    required TResult Function(List<QuestionModel> listQuestions, int index)
        rightAnswer,
    required TResult Function(String failed) failed,
  }) {
    return rightAnswer(listQuestions, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<QuestionModel> listQuestions, int index)? loaded,
    TResult? Function(List<QuestionModel> listQuestions, int index)?
        wrongAnswer,
    TResult? Function(List<QuestionModel> listQuestions, int index)?
        rightAnswer,
    TResult? Function(String failed)? failed,
  }) {
    return rightAnswer?.call(listQuestions, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<QuestionModel> listQuestions, int index)? loaded,
    TResult Function(List<QuestionModel> listQuestions, int index)? wrongAnswer,
    TResult Function(List<QuestionModel> listQuestions, int index)? rightAnswer,
    TResult Function(String failed)? failed,
    required TResult orElse(),
  }) {
    if (rightAnswer != null) {
      return rightAnswer(listQuestions, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateLoading value) loading,
    required TResult Function(GameStateLoaded value) loaded,
    required TResult Function(GameStateWrongAnswer value) wrongAnswer,
    required TResult Function(GameStateRightAnswer value) rightAnswer,
    required TResult Function(GameStateFailed value) failed,
  }) {
    return rightAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateLoading value)? loading,
    TResult? Function(GameStateLoaded value)? loaded,
    TResult? Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult? Function(GameStateRightAnswer value)? rightAnswer,
    TResult? Function(GameStateFailed value)? failed,
  }) {
    return rightAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateLoading value)? loading,
    TResult Function(GameStateLoaded value)? loaded,
    TResult Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult Function(GameStateRightAnswer value)? rightAnswer,
    TResult Function(GameStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (rightAnswer != null) {
      return rightAnswer(this);
    }
    return orElse();
  }
}

abstract class GameStateRightAnswer extends GameState {
  factory GameStateRightAnswer(
      {required final List<QuestionModel> listQuestions,
      required final int index}) = _$GameStateRightAnswer;
  GameStateRightAnswer._() : super._();

  List<QuestionModel> get listQuestions;
  int get index;
  @JsonKey(ignore: true)
  _$$GameStateRightAnswerCopyWith<_$GameStateRightAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameStateFailedCopyWith<$Res> {
  factory _$$GameStateFailedCopyWith(
          _$GameStateFailed value, $Res Function(_$GameStateFailed) then) =
      __$$GameStateFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String failed});
}

/// @nodoc
class __$$GameStateFailedCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateFailed>
    implements _$$GameStateFailedCopyWith<$Res> {
  __$$GameStateFailedCopyWithImpl(
      _$GameStateFailed _value, $Res Function(_$GameStateFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failed = null,
  }) {
    return _then(_$GameStateFailed(
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GameStateFailed extends GameStateFailed {
  _$GameStateFailed({required this.failed}) : super._();

  @override
  final String failed;

  @override
  String toString() {
    return 'GameState.failed(failed: $failed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateFailed &&
            (identical(other.failed, failed) || other.failed == failed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateFailedCopyWith<_$GameStateFailed> get copyWith =>
      __$$GameStateFailedCopyWithImpl<_$GameStateFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<QuestionModel> listQuestions, int index)
        loaded,
    required TResult Function(List<QuestionModel> listQuestions, int index)
        wrongAnswer,
    required TResult Function(List<QuestionModel> listQuestions, int index)
        rightAnswer,
    required TResult Function(String failed) failed,
  }) {
    return failed(this.failed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<QuestionModel> listQuestions, int index)? loaded,
    TResult? Function(List<QuestionModel> listQuestions, int index)?
        wrongAnswer,
    TResult? Function(List<QuestionModel> listQuestions, int index)?
        rightAnswer,
    TResult? Function(String failed)? failed,
  }) {
    return failed?.call(this.failed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<QuestionModel> listQuestions, int index)? loaded,
    TResult Function(List<QuestionModel> listQuestions, int index)? wrongAnswer,
    TResult Function(List<QuestionModel> listQuestions, int index)? rightAnswer,
    TResult Function(String failed)? failed,
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
    required TResult Function(GameStateLoading value) loading,
    required TResult Function(GameStateLoaded value) loaded,
    required TResult Function(GameStateWrongAnswer value) wrongAnswer,
    required TResult Function(GameStateRightAnswer value) rightAnswer,
    required TResult Function(GameStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateLoading value)? loading,
    TResult? Function(GameStateLoaded value)? loaded,
    TResult? Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult? Function(GameStateRightAnswer value)? rightAnswer,
    TResult? Function(GameStateFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateLoading value)? loading,
    TResult Function(GameStateLoaded value)? loaded,
    TResult Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult Function(GameStateRightAnswer value)? rightAnswer,
    TResult Function(GameStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class GameStateFailed extends GameState {
  factory GameStateFailed({required final String failed}) = _$GameStateFailed;
  GameStateFailed._() : super._();

  String get failed;
  @JsonKey(ignore: true)
  _$$GameStateFailedCopyWith<_$GameStateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
