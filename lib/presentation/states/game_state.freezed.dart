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
    required TResult Function(GameEntity gameEntity) loaded,
    required TResult Function(GameEntity gameEntity) nextQuestion,
    required TResult Function(GameEntity gameEntity) wrongAnswer,
    required TResult Function(GameEntity gameEntity) rightAnswer,
    required TResult Function(int score, int goodAnswer) finished,
    required TResult Function() alreadyPlayedToday,
    required TResult Function(String failed) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(GameEntity gameEntity)? loaded,
    TResult? Function(GameEntity gameEntity)? nextQuestion,
    TResult? Function(GameEntity gameEntity)? wrongAnswer,
    TResult? Function(GameEntity gameEntity)? rightAnswer,
    TResult? Function(int score, int goodAnswer)? finished,
    TResult? Function()? alreadyPlayedToday,
    TResult? Function(String failed)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(GameEntity gameEntity)? loaded,
    TResult Function(GameEntity gameEntity)? nextQuestion,
    TResult Function(GameEntity gameEntity)? wrongAnswer,
    TResult Function(GameEntity gameEntity)? rightAnswer,
    TResult Function(int score, int goodAnswer)? finished,
    TResult Function()? alreadyPlayedToday,
    TResult Function(String failed)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateLoading value) loading,
    required TResult Function(GameStateLoaded value) loaded,
    required TResult Function(GameStateNextQuestion value) nextQuestion,
    required TResult Function(GameStateWrongAnswer value) wrongAnswer,
    required TResult Function(GameStateRightAnswer value) rightAnswer,
    required TResult Function(GameStateFinished value) finished,
    required TResult Function(GameStateAlreadyPlayedToday value)
        alreadyPlayedToday,
    required TResult Function(GameStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateLoading value)? loading,
    TResult? Function(GameStateLoaded value)? loaded,
    TResult? Function(GameStateNextQuestion value)? nextQuestion,
    TResult? Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult? Function(GameStateRightAnswer value)? rightAnswer,
    TResult? Function(GameStateFinished value)? finished,
    TResult? Function(GameStateAlreadyPlayedToday value)? alreadyPlayedToday,
    TResult? Function(GameStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateLoading value)? loading,
    TResult Function(GameStateLoaded value)? loaded,
    TResult Function(GameStateNextQuestion value)? nextQuestion,
    TResult Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult Function(GameStateRightAnswer value)? rightAnswer,
    TResult Function(GameStateFinished value)? finished,
    TResult Function(GameStateAlreadyPlayedToday value)? alreadyPlayedToday,
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
    required TResult Function(GameEntity gameEntity) loaded,
    required TResult Function(GameEntity gameEntity) nextQuestion,
    required TResult Function(GameEntity gameEntity) wrongAnswer,
    required TResult Function(GameEntity gameEntity) rightAnswer,
    required TResult Function(int score, int goodAnswer) finished,
    required TResult Function() alreadyPlayedToday,
    required TResult Function(String failed) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(GameEntity gameEntity)? loaded,
    TResult? Function(GameEntity gameEntity)? nextQuestion,
    TResult? Function(GameEntity gameEntity)? wrongAnswer,
    TResult? Function(GameEntity gameEntity)? rightAnswer,
    TResult? Function(int score, int goodAnswer)? finished,
    TResult? Function()? alreadyPlayedToday,
    TResult? Function(String failed)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(GameEntity gameEntity)? loaded,
    TResult Function(GameEntity gameEntity)? nextQuestion,
    TResult Function(GameEntity gameEntity)? wrongAnswer,
    TResult Function(GameEntity gameEntity)? rightAnswer,
    TResult Function(int score, int goodAnswer)? finished,
    TResult Function()? alreadyPlayedToday,
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
    required TResult Function(GameStateNextQuestion value) nextQuestion,
    required TResult Function(GameStateWrongAnswer value) wrongAnswer,
    required TResult Function(GameStateRightAnswer value) rightAnswer,
    required TResult Function(GameStateFinished value) finished,
    required TResult Function(GameStateAlreadyPlayedToday value)
        alreadyPlayedToday,
    required TResult Function(GameStateFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateLoading value)? loading,
    TResult? Function(GameStateLoaded value)? loaded,
    TResult? Function(GameStateNextQuestion value)? nextQuestion,
    TResult? Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult? Function(GameStateRightAnswer value)? rightAnswer,
    TResult? Function(GameStateFinished value)? finished,
    TResult? Function(GameStateAlreadyPlayedToday value)? alreadyPlayedToday,
    TResult? Function(GameStateFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateLoading value)? loading,
    TResult Function(GameStateLoaded value)? loaded,
    TResult Function(GameStateNextQuestion value)? nextQuestion,
    TResult Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult Function(GameStateRightAnswer value)? rightAnswer,
    TResult Function(GameStateFinished value)? finished,
    TResult Function(GameStateAlreadyPlayedToday value)? alreadyPlayedToday,
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
  $Res call({GameEntity gameEntity});
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
    Object? gameEntity = null,
  }) {
    return _then(_$GameStateLoaded(
      gameEntity: null == gameEntity
          ? _value.gameEntity
          : gameEntity // ignore: cast_nullable_to_non_nullable
              as GameEntity,
    ));
  }
}

/// @nodoc

class _$GameStateLoaded extends GameStateLoaded {
  _$GameStateLoaded({required this.gameEntity}) : super._();

  @override
  final GameEntity gameEntity;

  @override
  String toString() {
    return 'GameState.loaded(gameEntity: $gameEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateLoaded &&
            (identical(other.gameEntity, gameEntity) ||
                other.gameEntity == gameEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateLoadedCopyWith<_$GameStateLoaded> get copyWith =>
      __$$GameStateLoadedCopyWithImpl<_$GameStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(GameEntity gameEntity) loaded,
    required TResult Function(GameEntity gameEntity) nextQuestion,
    required TResult Function(GameEntity gameEntity) wrongAnswer,
    required TResult Function(GameEntity gameEntity) rightAnswer,
    required TResult Function(int score, int goodAnswer) finished,
    required TResult Function() alreadyPlayedToday,
    required TResult Function(String failed) failed,
  }) {
    return loaded(gameEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(GameEntity gameEntity)? loaded,
    TResult? Function(GameEntity gameEntity)? nextQuestion,
    TResult? Function(GameEntity gameEntity)? wrongAnswer,
    TResult? Function(GameEntity gameEntity)? rightAnswer,
    TResult? Function(int score, int goodAnswer)? finished,
    TResult? Function()? alreadyPlayedToday,
    TResult? Function(String failed)? failed,
  }) {
    return loaded?.call(gameEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(GameEntity gameEntity)? loaded,
    TResult Function(GameEntity gameEntity)? nextQuestion,
    TResult Function(GameEntity gameEntity)? wrongAnswer,
    TResult Function(GameEntity gameEntity)? rightAnswer,
    TResult Function(int score, int goodAnswer)? finished,
    TResult Function()? alreadyPlayedToday,
    TResult Function(String failed)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(gameEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateLoading value) loading,
    required TResult Function(GameStateLoaded value) loaded,
    required TResult Function(GameStateNextQuestion value) nextQuestion,
    required TResult Function(GameStateWrongAnswer value) wrongAnswer,
    required TResult Function(GameStateRightAnswer value) rightAnswer,
    required TResult Function(GameStateFinished value) finished,
    required TResult Function(GameStateAlreadyPlayedToday value)
        alreadyPlayedToday,
    required TResult Function(GameStateFailed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateLoading value)? loading,
    TResult? Function(GameStateLoaded value)? loaded,
    TResult? Function(GameStateNextQuestion value)? nextQuestion,
    TResult? Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult? Function(GameStateRightAnswer value)? rightAnswer,
    TResult? Function(GameStateFinished value)? finished,
    TResult? Function(GameStateAlreadyPlayedToday value)? alreadyPlayedToday,
    TResult? Function(GameStateFailed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateLoading value)? loading,
    TResult Function(GameStateLoaded value)? loaded,
    TResult Function(GameStateNextQuestion value)? nextQuestion,
    TResult Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult Function(GameStateRightAnswer value)? rightAnswer,
    TResult Function(GameStateFinished value)? finished,
    TResult Function(GameStateAlreadyPlayedToday value)? alreadyPlayedToday,
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
  factory GameStateLoaded({required final GameEntity gameEntity}) =
      _$GameStateLoaded;
  GameStateLoaded._() : super._();

  GameEntity get gameEntity;
  @JsonKey(ignore: true)
  _$$GameStateLoadedCopyWith<_$GameStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameStateNextQuestionCopyWith<$Res> {
  factory _$$GameStateNextQuestionCopyWith(_$GameStateNextQuestion value,
          $Res Function(_$GameStateNextQuestion) then) =
      __$$GameStateNextQuestionCopyWithImpl<$Res>;
  @useResult
  $Res call({GameEntity gameEntity});
}

/// @nodoc
class __$$GameStateNextQuestionCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateNextQuestion>
    implements _$$GameStateNextQuestionCopyWith<$Res> {
  __$$GameStateNextQuestionCopyWithImpl(_$GameStateNextQuestion _value,
      $Res Function(_$GameStateNextQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameEntity = null,
  }) {
    return _then(_$GameStateNextQuestion(
      gameEntity: null == gameEntity
          ? _value.gameEntity
          : gameEntity // ignore: cast_nullable_to_non_nullable
              as GameEntity,
    ));
  }
}

/// @nodoc

class _$GameStateNextQuestion extends GameStateNextQuestion {
  _$GameStateNextQuestion({required this.gameEntity}) : super._();

  @override
  final GameEntity gameEntity;

  @override
  String toString() {
    return 'GameState.nextQuestion(gameEntity: $gameEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateNextQuestion &&
            (identical(other.gameEntity, gameEntity) ||
                other.gameEntity == gameEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateNextQuestionCopyWith<_$GameStateNextQuestion> get copyWith =>
      __$$GameStateNextQuestionCopyWithImpl<_$GameStateNextQuestion>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(GameEntity gameEntity) loaded,
    required TResult Function(GameEntity gameEntity) nextQuestion,
    required TResult Function(GameEntity gameEntity) wrongAnswer,
    required TResult Function(GameEntity gameEntity) rightAnswer,
    required TResult Function(int score, int goodAnswer) finished,
    required TResult Function() alreadyPlayedToday,
    required TResult Function(String failed) failed,
  }) {
    return nextQuestion(gameEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(GameEntity gameEntity)? loaded,
    TResult? Function(GameEntity gameEntity)? nextQuestion,
    TResult? Function(GameEntity gameEntity)? wrongAnswer,
    TResult? Function(GameEntity gameEntity)? rightAnswer,
    TResult? Function(int score, int goodAnswer)? finished,
    TResult? Function()? alreadyPlayedToday,
    TResult? Function(String failed)? failed,
  }) {
    return nextQuestion?.call(gameEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(GameEntity gameEntity)? loaded,
    TResult Function(GameEntity gameEntity)? nextQuestion,
    TResult Function(GameEntity gameEntity)? wrongAnswer,
    TResult Function(GameEntity gameEntity)? rightAnswer,
    TResult Function(int score, int goodAnswer)? finished,
    TResult Function()? alreadyPlayedToday,
    TResult Function(String failed)? failed,
    required TResult orElse(),
  }) {
    if (nextQuestion != null) {
      return nextQuestion(gameEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateLoading value) loading,
    required TResult Function(GameStateLoaded value) loaded,
    required TResult Function(GameStateNextQuestion value) nextQuestion,
    required TResult Function(GameStateWrongAnswer value) wrongAnswer,
    required TResult Function(GameStateRightAnswer value) rightAnswer,
    required TResult Function(GameStateFinished value) finished,
    required TResult Function(GameStateAlreadyPlayedToday value)
        alreadyPlayedToday,
    required TResult Function(GameStateFailed value) failed,
  }) {
    return nextQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateLoading value)? loading,
    TResult? Function(GameStateLoaded value)? loaded,
    TResult? Function(GameStateNextQuestion value)? nextQuestion,
    TResult? Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult? Function(GameStateRightAnswer value)? rightAnswer,
    TResult? Function(GameStateFinished value)? finished,
    TResult? Function(GameStateAlreadyPlayedToday value)? alreadyPlayedToday,
    TResult? Function(GameStateFailed value)? failed,
  }) {
    return nextQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateLoading value)? loading,
    TResult Function(GameStateLoaded value)? loaded,
    TResult Function(GameStateNextQuestion value)? nextQuestion,
    TResult Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult Function(GameStateRightAnswer value)? rightAnswer,
    TResult Function(GameStateFinished value)? finished,
    TResult Function(GameStateAlreadyPlayedToday value)? alreadyPlayedToday,
    TResult Function(GameStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (nextQuestion != null) {
      return nextQuestion(this);
    }
    return orElse();
  }
}

abstract class GameStateNextQuestion extends GameState {
  factory GameStateNextQuestion({required final GameEntity gameEntity}) =
      _$GameStateNextQuestion;
  GameStateNextQuestion._() : super._();

  GameEntity get gameEntity;
  @JsonKey(ignore: true)
  _$$GameStateNextQuestionCopyWith<_$GameStateNextQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameStateWrongAnswerCopyWith<$Res> {
  factory _$$GameStateWrongAnswerCopyWith(_$GameStateWrongAnswer value,
          $Res Function(_$GameStateWrongAnswer) then) =
      __$$GameStateWrongAnswerCopyWithImpl<$Res>;
  @useResult
  $Res call({GameEntity gameEntity});
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
    Object? gameEntity = null,
  }) {
    return _then(_$GameStateWrongAnswer(
      gameEntity: null == gameEntity
          ? _value.gameEntity
          : gameEntity // ignore: cast_nullable_to_non_nullable
              as GameEntity,
    ));
  }
}

/// @nodoc

class _$GameStateWrongAnswer extends GameStateWrongAnswer {
  _$GameStateWrongAnswer({required this.gameEntity}) : super._();

  @override
  final GameEntity gameEntity;

  @override
  String toString() {
    return 'GameState.wrongAnswer(gameEntity: $gameEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateWrongAnswer &&
            (identical(other.gameEntity, gameEntity) ||
                other.gameEntity == gameEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameEntity);

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
    required TResult Function(GameEntity gameEntity) loaded,
    required TResult Function(GameEntity gameEntity) nextQuestion,
    required TResult Function(GameEntity gameEntity) wrongAnswer,
    required TResult Function(GameEntity gameEntity) rightAnswer,
    required TResult Function(int score, int goodAnswer) finished,
    required TResult Function() alreadyPlayedToday,
    required TResult Function(String failed) failed,
  }) {
    return wrongAnswer(gameEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(GameEntity gameEntity)? loaded,
    TResult? Function(GameEntity gameEntity)? nextQuestion,
    TResult? Function(GameEntity gameEntity)? wrongAnswer,
    TResult? Function(GameEntity gameEntity)? rightAnswer,
    TResult? Function(int score, int goodAnswer)? finished,
    TResult? Function()? alreadyPlayedToday,
    TResult? Function(String failed)? failed,
  }) {
    return wrongAnswer?.call(gameEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(GameEntity gameEntity)? loaded,
    TResult Function(GameEntity gameEntity)? nextQuestion,
    TResult Function(GameEntity gameEntity)? wrongAnswer,
    TResult Function(GameEntity gameEntity)? rightAnswer,
    TResult Function(int score, int goodAnswer)? finished,
    TResult Function()? alreadyPlayedToday,
    TResult Function(String failed)? failed,
    required TResult orElse(),
  }) {
    if (wrongAnswer != null) {
      return wrongAnswer(gameEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateLoading value) loading,
    required TResult Function(GameStateLoaded value) loaded,
    required TResult Function(GameStateNextQuestion value) nextQuestion,
    required TResult Function(GameStateWrongAnswer value) wrongAnswer,
    required TResult Function(GameStateRightAnswer value) rightAnswer,
    required TResult Function(GameStateFinished value) finished,
    required TResult Function(GameStateAlreadyPlayedToday value)
        alreadyPlayedToday,
    required TResult Function(GameStateFailed value) failed,
  }) {
    return wrongAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateLoading value)? loading,
    TResult? Function(GameStateLoaded value)? loaded,
    TResult? Function(GameStateNextQuestion value)? nextQuestion,
    TResult? Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult? Function(GameStateRightAnswer value)? rightAnswer,
    TResult? Function(GameStateFinished value)? finished,
    TResult? Function(GameStateAlreadyPlayedToday value)? alreadyPlayedToday,
    TResult? Function(GameStateFailed value)? failed,
  }) {
    return wrongAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateLoading value)? loading,
    TResult Function(GameStateLoaded value)? loaded,
    TResult Function(GameStateNextQuestion value)? nextQuestion,
    TResult Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult Function(GameStateRightAnswer value)? rightAnswer,
    TResult Function(GameStateFinished value)? finished,
    TResult Function(GameStateAlreadyPlayedToday value)? alreadyPlayedToday,
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
  factory GameStateWrongAnswer({required final GameEntity gameEntity}) =
      _$GameStateWrongAnswer;
  GameStateWrongAnswer._() : super._();

  GameEntity get gameEntity;
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
  $Res call({GameEntity gameEntity});
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
    Object? gameEntity = null,
  }) {
    return _then(_$GameStateRightAnswer(
      gameEntity: null == gameEntity
          ? _value.gameEntity
          : gameEntity // ignore: cast_nullable_to_non_nullable
              as GameEntity,
    ));
  }
}

/// @nodoc

class _$GameStateRightAnswer extends GameStateRightAnswer {
  _$GameStateRightAnswer({required this.gameEntity}) : super._();

  @override
  final GameEntity gameEntity;

  @override
  String toString() {
    return 'GameState.rightAnswer(gameEntity: $gameEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateRightAnswer &&
            (identical(other.gameEntity, gameEntity) ||
                other.gameEntity == gameEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameEntity);

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
    required TResult Function(GameEntity gameEntity) loaded,
    required TResult Function(GameEntity gameEntity) nextQuestion,
    required TResult Function(GameEntity gameEntity) wrongAnswer,
    required TResult Function(GameEntity gameEntity) rightAnswer,
    required TResult Function(int score, int goodAnswer) finished,
    required TResult Function() alreadyPlayedToday,
    required TResult Function(String failed) failed,
  }) {
    return rightAnswer(gameEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(GameEntity gameEntity)? loaded,
    TResult? Function(GameEntity gameEntity)? nextQuestion,
    TResult? Function(GameEntity gameEntity)? wrongAnswer,
    TResult? Function(GameEntity gameEntity)? rightAnswer,
    TResult? Function(int score, int goodAnswer)? finished,
    TResult? Function()? alreadyPlayedToday,
    TResult? Function(String failed)? failed,
  }) {
    return rightAnswer?.call(gameEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(GameEntity gameEntity)? loaded,
    TResult Function(GameEntity gameEntity)? nextQuestion,
    TResult Function(GameEntity gameEntity)? wrongAnswer,
    TResult Function(GameEntity gameEntity)? rightAnswer,
    TResult Function(int score, int goodAnswer)? finished,
    TResult Function()? alreadyPlayedToday,
    TResult Function(String failed)? failed,
    required TResult orElse(),
  }) {
    if (rightAnswer != null) {
      return rightAnswer(gameEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateLoading value) loading,
    required TResult Function(GameStateLoaded value) loaded,
    required TResult Function(GameStateNextQuestion value) nextQuestion,
    required TResult Function(GameStateWrongAnswer value) wrongAnswer,
    required TResult Function(GameStateRightAnswer value) rightAnswer,
    required TResult Function(GameStateFinished value) finished,
    required TResult Function(GameStateAlreadyPlayedToday value)
        alreadyPlayedToday,
    required TResult Function(GameStateFailed value) failed,
  }) {
    return rightAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateLoading value)? loading,
    TResult? Function(GameStateLoaded value)? loaded,
    TResult? Function(GameStateNextQuestion value)? nextQuestion,
    TResult? Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult? Function(GameStateRightAnswer value)? rightAnswer,
    TResult? Function(GameStateFinished value)? finished,
    TResult? Function(GameStateAlreadyPlayedToday value)? alreadyPlayedToday,
    TResult? Function(GameStateFailed value)? failed,
  }) {
    return rightAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateLoading value)? loading,
    TResult Function(GameStateLoaded value)? loaded,
    TResult Function(GameStateNextQuestion value)? nextQuestion,
    TResult Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult Function(GameStateRightAnswer value)? rightAnswer,
    TResult Function(GameStateFinished value)? finished,
    TResult Function(GameStateAlreadyPlayedToday value)? alreadyPlayedToday,
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
  factory GameStateRightAnswer({required final GameEntity gameEntity}) =
      _$GameStateRightAnswer;
  GameStateRightAnswer._() : super._();

  GameEntity get gameEntity;
  @JsonKey(ignore: true)
  _$$GameStateRightAnswerCopyWith<_$GameStateRightAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameStateFinishedCopyWith<$Res> {
  factory _$$GameStateFinishedCopyWith(
          _$GameStateFinished value, $Res Function(_$GameStateFinished) then) =
      __$$GameStateFinishedCopyWithImpl<$Res>;
  @useResult
  $Res call({int score, int goodAnswer});
}

/// @nodoc
class __$$GameStateFinishedCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateFinished>
    implements _$$GameStateFinishedCopyWith<$Res> {
  __$$GameStateFinishedCopyWithImpl(
      _$GameStateFinished _value, $Res Function(_$GameStateFinished) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? goodAnswer = null,
  }) {
    return _then(_$GameStateFinished(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      goodAnswer: null == goodAnswer
          ? _value.goodAnswer
          : goodAnswer // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GameStateFinished extends GameStateFinished {
  _$GameStateFinished({required this.score, required this.goodAnswer})
      : super._();

  @override
  final int score;
  @override
  final int goodAnswer;

  @override
  String toString() {
    return 'GameState.finished(score: $score, goodAnswer: $goodAnswer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateFinished &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.goodAnswer, goodAnswer) ||
                other.goodAnswer == goodAnswer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, score, goodAnswer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateFinishedCopyWith<_$GameStateFinished> get copyWith =>
      __$$GameStateFinishedCopyWithImpl<_$GameStateFinished>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(GameEntity gameEntity) loaded,
    required TResult Function(GameEntity gameEntity) nextQuestion,
    required TResult Function(GameEntity gameEntity) wrongAnswer,
    required TResult Function(GameEntity gameEntity) rightAnswer,
    required TResult Function(int score, int goodAnswer) finished,
    required TResult Function() alreadyPlayedToday,
    required TResult Function(String failed) failed,
  }) {
    return finished(score, goodAnswer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(GameEntity gameEntity)? loaded,
    TResult? Function(GameEntity gameEntity)? nextQuestion,
    TResult? Function(GameEntity gameEntity)? wrongAnswer,
    TResult? Function(GameEntity gameEntity)? rightAnswer,
    TResult? Function(int score, int goodAnswer)? finished,
    TResult? Function()? alreadyPlayedToday,
    TResult? Function(String failed)? failed,
  }) {
    return finished?.call(score, goodAnswer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(GameEntity gameEntity)? loaded,
    TResult Function(GameEntity gameEntity)? nextQuestion,
    TResult Function(GameEntity gameEntity)? wrongAnswer,
    TResult Function(GameEntity gameEntity)? rightAnswer,
    TResult Function(int score, int goodAnswer)? finished,
    TResult Function()? alreadyPlayedToday,
    TResult Function(String failed)? failed,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(score, goodAnswer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateLoading value) loading,
    required TResult Function(GameStateLoaded value) loaded,
    required TResult Function(GameStateNextQuestion value) nextQuestion,
    required TResult Function(GameStateWrongAnswer value) wrongAnswer,
    required TResult Function(GameStateRightAnswer value) rightAnswer,
    required TResult Function(GameStateFinished value) finished,
    required TResult Function(GameStateAlreadyPlayedToday value)
        alreadyPlayedToday,
    required TResult Function(GameStateFailed value) failed,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateLoading value)? loading,
    TResult? Function(GameStateLoaded value)? loaded,
    TResult? Function(GameStateNextQuestion value)? nextQuestion,
    TResult? Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult? Function(GameStateRightAnswer value)? rightAnswer,
    TResult? Function(GameStateFinished value)? finished,
    TResult? Function(GameStateAlreadyPlayedToday value)? alreadyPlayedToday,
    TResult? Function(GameStateFailed value)? failed,
  }) {
    return finished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateLoading value)? loading,
    TResult Function(GameStateLoaded value)? loaded,
    TResult Function(GameStateNextQuestion value)? nextQuestion,
    TResult Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult Function(GameStateRightAnswer value)? rightAnswer,
    TResult Function(GameStateFinished value)? finished,
    TResult Function(GameStateAlreadyPlayedToday value)? alreadyPlayedToday,
    TResult Function(GameStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class GameStateFinished extends GameState {
  factory GameStateFinished(
      {required final int score,
      required final int goodAnswer}) = _$GameStateFinished;
  GameStateFinished._() : super._();

  int get score;
  int get goodAnswer;
  @JsonKey(ignore: true)
  _$$GameStateFinishedCopyWith<_$GameStateFinished> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameStateAlreadyPlayedTodayCopyWith<$Res> {
  factory _$$GameStateAlreadyPlayedTodayCopyWith(
          _$GameStateAlreadyPlayedToday value,
          $Res Function(_$GameStateAlreadyPlayedToday) then) =
      __$$GameStateAlreadyPlayedTodayCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameStateAlreadyPlayedTodayCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateAlreadyPlayedToday>
    implements _$$GameStateAlreadyPlayedTodayCopyWith<$Res> {
  __$$GameStateAlreadyPlayedTodayCopyWithImpl(
      _$GameStateAlreadyPlayedToday _value,
      $Res Function(_$GameStateAlreadyPlayedToday) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GameStateAlreadyPlayedToday extends GameStateAlreadyPlayedToday {
  _$GameStateAlreadyPlayedToday() : super._();

  @override
  String toString() {
    return 'GameState.alreadyPlayedToday()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateAlreadyPlayedToday);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(GameEntity gameEntity) loaded,
    required TResult Function(GameEntity gameEntity) nextQuestion,
    required TResult Function(GameEntity gameEntity) wrongAnswer,
    required TResult Function(GameEntity gameEntity) rightAnswer,
    required TResult Function(int score, int goodAnswer) finished,
    required TResult Function() alreadyPlayedToday,
    required TResult Function(String failed) failed,
  }) {
    return alreadyPlayedToday();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(GameEntity gameEntity)? loaded,
    TResult? Function(GameEntity gameEntity)? nextQuestion,
    TResult? Function(GameEntity gameEntity)? wrongAnswer,
    TResult? Function(GameEntity gameEntity)? rightAnswer,
    TResult? Function(int score, int goodAnswer)? finished,
    TResult? Function()? alreadyPlayedToday,
    TResult? Function(String failed)? failed,
  }) {
    return alreadyPlayedToday?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(GameEntity gameEntity)? loaded,
    TResult Function(GameEntity gameEntity)? nextQuestion,
    TResult Function(GameEntity gameEntity)? wrongAnswer,
    TResult Function(GameEntity gameEntity)? rightAnswer,
    TResult Function(int score, int goodAnswer)? finished,
    TResult Function()? alreadyPlayedToday,
    TResult Function(String failed)? failed,
    required TResult orElse(),
  }) {
    if (alreadyPlayedToday != null) {
      return alreadyPlayedToday();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateLoading value) loading,
    required TResult Function(GameStateLoaded value) loaded,
    required TResult Function(GameStateNextQuestion value) nextQuestion,
    required TResult Function(GameStateWrongAnswer value) wrongAnswer,
    required TResult Function(GameStateRightAnswer value) rightAnswer,
    required TResult Function(GameStateFinished value) finished,
    required TResult Function(GameStateAlreadyPlayedToday value)
        alreadyPlayedToday,
    required TResult Function(GameStateFailed value) failed,
  }) {
    return alreadyPlayedToday(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateLoading value)? loading,
    TResult? Function(GameStateLoaded value)? loaded,
    TResult? Function(GameStateNextQuestion value)? nextQuestion,
    TResult? Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult? Function(GameStateRightAnswer value)? rightAnswer,
    TResult? Function(GameStateFinished value)? finished,
    TResult? Function(GameStateAlreadyPlayedToday value)? alreadyPlayedToday,
    TResult? Function(GameStateFailed value)? failed,
  }) {
    return alreadyPlayedToday?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateLoading value)? loading,
    TResult Function(GameStateLoaded value)? loaded,
    TResult Function(GameStateNextQuestion value)? nextQuestion,
    TResult Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult Function(GameStateRightAnswer value)? rightAnswer,
    TResult Function(GameStateFinished value)? finished,
    TResult Function(GameStateAlreadyPlayedToday value)? alreadyPlayedToday,
    TResult Function(GameStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (alreadyPlayedToday != null) {
      return alreadyPlayedToday(this);
    }
    return orElse();
  }
}

abstract class GameStateAlreadyPlayedToday extends GameState {
  factory GameStateAlreadyPlayedToday() = _$GameStateAlreadyPlayedToday;
  GameStateAlreadyPlayedToday._() : super._();
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
    required TResult Function(GameEntity gameEntity) loaded,
    required TResult Function(GameEntity gameEntity) nextQuestion,
    required TResult Function(GameEntity gameEntity) wrongAnswer,
    required TResult Function(GameEntity gameEntity) rightAnswer,
    required TResult Function(int score, int goodAnswer) finished,
    required TResult Function() alreadyPlayedToday,
    required TResult Function(String failed) failed,
  }) {
    return failed(this.failed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(GameEntity gameEntity)? loaded,
    TResult? Function(GameEntity gameEntity)? nextQuestion,
    TResult? Function(GameEntity gameEntity)? wrongAnswer,
    TResult? Function(GameEntity gameEntity)? rightAnswer,
    TResult? Function(int score, int goodAnswer)? finished,
    TResult? Function()? alreadyPlayedToday,
    TResult? Function(String failed)? failed,
  }) {
    return failed?.call(this.failed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(GameEntity gameEntity)? loaded,
    TResult Function(GameEntity gameEntity)? nextQuestion,
    TResult Function(GameEntity gameEntity)? wrongAnswer,
    TResult Function(GameEntity gameEntity)? rightAnswer,
    TResult Function(int score, int goodAnswer)? finished,
    TResult Function()? alreadyPlayedToday,
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
    required TResult Function(GameStateNextQuestion value) nextQuestion,
    required TResult Function(GameStateWrongAnswer value) wrongAnswer,
    required TResult Function(GameStateRightAnswer value) rightAnswer,
    required TResult Function(GameStateFinished value) finished,
    required TResult Function(GameStateAlreadyPlayedToday value)
        alreadyPlayedToday,
    required TResult Function(GameStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateLoading value)? loading,
    TResult? Function(GameStateLoaded value)? loaded,
    TResult? Function(GameStateNextQuestion value)? nextQuestion,
    TResult? Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult? Function(GameStateRightAnswer value)? rightAnswer,
    TResult? Function(GameStateFinished value)? finished,
    TResult? Function(GameStateAlreadyPlayedToday value)? alreadyPlayedToday,
    TResult? Function(GameStateFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateLoading value)? loading,
    TResult Function(GameStateLoaded value)? loaded,
    TResult Function(GameStateNextQuestion value)? nextQuestion,
    TResult Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult Function(GameStateRightAnswer value)? rightAnswer,
    TResult Function(GameStateFinished value)? finished,
    TResult Function(GameStateAlreadyPlayedToday value)? alreadyPlayedToday,
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
