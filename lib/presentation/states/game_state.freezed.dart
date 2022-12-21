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
    required TResult Function(List<Question> listQuestions) loaded,
    required TResult Function(List<Question> listQuestions, int index) start,
    required TResult Function(int index, List<Question> listQuestions,
            List<Question>? goodAnswers, List<Question>? badAnswers)
        nextQuestion,
    required TResult Function(int index, List<Question> listQuestions)
        wrongAnswer,
    required TResult Function(int index, List<Question> listQuestions)
        rightAnswer,
    required TResult Function(String failed) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Question> listQuestions)? loaded,
    TResult? Function(List<Question> listQuestions, int index)? start,
    TResult? Function(int index, List<Question> listQuestions,
            List<Question>? goodAnswers, List<Question>? badAnswers)?
        nextQuestion,
    TResult? Function(int index, List<Question> listQuestions)? wrongAnswer,
    TResult? Function(int index, List<Question> listQuestions)? rightAnswer,
    TResult? Function(String failed)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> listQuestions)? loaded,
    TResult Function(List<Question> listQuestions, int index)? start,
    TResult Function(int index, List<Question> listQuestions,
            List<Question>? goodAnswers, List<Question>? badAnswers)?
        nextQuestion,
    TResult Function(int index, List<Question> listQuestions)? wrongAnswer,
    TResult Function(int index, List<Question> listQuestions)? rightAnswer,
    TResult Function(String failed)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateLoading value) loading,
    required TResult Function(GameStateLoaded value) loaded,
    required TResult Function(GameStateStart value) start,
    required TResult Function(GameStateNextQuestion value) nextQuestion,
    required TResult Function(GameStateWrongAnswer value) wrongAnswer,
    required TResult Function(GameStateRightAnswer value) rightAnswer,
    required TResult Function(GameStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateLoading value)? loading,
    TResult? Function(GameStateLoaded value)? loaded,
    TResult? Function(GameStateStart value)? start,
    TResult? Function(GameStateNextQuestion value)? nextQuestion,
    TResult? Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult? Function(GameStateRightAnswer value)? rightAnswer,
    TResult? Function(GameStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateLoading value)? loading,
    TResult Function(GameStateLoaded value)? loaded,
    TResult Function(GameStateStart value)? start,
    TResult Function(GameStateNextQuestion value)? nextQuestion,
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
    required TResult Function(List<Question> listQuestions) loaded,
    required TResult Function(List<Question> listQuestions, int index) start,
    required TResult Function(int index, List<Question> listQuestions,
            List<Question>? goodAnswers, List<Question>? badAnswers)
        nextQuestion,
    required TResult Function(int index, List<Question> listQuestions)
        wrongAnswer,
    required TResult Function(int index, List<Question> listQuestions)
        rightAnswer,
    required TResult Function(String failed) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Question> listQuestions)? loaded,
    TResult? Function(List<Question> listQuestions, int index)? start,
    TResult? Function(int index, List<Question> listQuestions,
            List<Question>? goodAnswers, List<Question>? badAnswers)?
        nextQuestion,
    TResult? Function(int index, List<Question> listQuestions)? wrongAnswer,
    TResult? Function(int index, List<Question> listQuestions)? rightAnswer,
    TResult? Function(String failed)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> listQuestions)? loaded,
    TResult Function(List<Question> listQuestions, int index)? start,
    TResult Function(int index, List<Question> listQuestions,
            List<Question>? goodAnswers, List<Question>? badAnswers)?
        nextQuestion,
    TResult Function(int index, List<Question> listQuestions)? wrongAnswer,
    TResult Function(int index, List<Question> listQuestions)? rightAnswer,
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
    required TResult Function(GameStateStart value) start,
    required TResult Function(GameStateNextQuestion value) nextQuestion,
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
    TResult? Function(GameStateStart value)? start,
    TResult? Function(GameStateNextQuestion value)? nextQuestion,
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
    TResult Function(GameStateStart value)? start,
    TResult Function(GameStateNextQuestion value)? nextQuestion,
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
  $Res call({List<Question> listQuestions});
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
  }) {
    return _then(_$GameStateLoaded(
      listQuestions: null == listQuestions
          ? _value.listQuestions
          : listQuestions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc

class _$GameStateLoaded extends GameStateLoaded {
  _$GameStateLoaded({required this.listQuestions}) : super._();

  @override
  final List<Question> listQuestions;

  @override
  String toString() {
    return 'GameState.loaded(listQuestions: $listQuestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateLoaded &&
            const DeepCollectionEquality()
                .equals(other.listQuestions, listQuestions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listQuestions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateLoadedCopyWith<_$GameStateLoaded> get copyWith =>
      __$$GameStateLoadedCopyWithImpl<_$GameStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Question> listQuestions) loaded,
    required TResult Function(List<Question> listQuestions, int index) start,
    required TResult Function(int index, List<Question> listQuestions,
            List<Question>? goodAnswers, List<Question>? badAnswers)
        nextQuestion,
    required TResult Function(int index, List<Question> listQuestions)
        wrongAnswer,
    required TResult Function(int index, List<Question> listQuestions)
        rightAnswer,
    required TResult Function(String failed) failed,
  }) {
    return loaded(listQuestions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Question> listQuestions)? loaded,
    TResult? Function(List<Question> listQuestions, int index)? start,
    TResult? Function(int index, List<Question> listQuestions,
            List<Question>? goodAnswers, List<Question>? badAnswers)?
        nextQuestion,
    TResult? Function(int index, List<Question> listQuestions)? wrongAnswer,
    TResult? Function(int index, List<Question> listQuestions)? rightAnswer,
    TResult? Function(String failed)? failed,
  }) {
    return loaded?.call(listQuestions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> listQuestions)? loaded,
    TResult Function(List<Question> listQuestions, int index)? start,
    TResult Function(int index, List<Question> listQuestions,
            List<Question>? goodAnswers, List<Question>? badAnswers)?
        nextQuestion,
    TResult Function(int index, List<Question> listQuestions)? wrongAnswer,
    TResult Function(int index, List<Question> listQuestions)? rightAnswer,
    TResult Function(String failed)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(listQuestions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateLoading value) loading,
    required TResult Function(GameStateLoaded value) loaded,
    required TResult Function(GameStateStart value) start,
    required TResult Function(GameStateNextQuestion value) nextQuestion,
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
    TResult? Function(GameStateStart value)? start,
    TResult? Function(GameStateNextQuestion value)? nextQuestion,
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
    TResult Function(GameStateStart value)? start,
    TResult Function(GameStateNextQuestion value)? nextQuestion,
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
  factory GameStateLoaded({required final List<Question> listQuestions}) =
      _$GameStateLoaded;
  GameStateLoaded._() : super._();

  List<Question> get listQuestions;
  @JsonKey(ignore: true)
  _$$GameStateLoadedCopyWith<_$GameStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameStateStartCopyWith<$Res> {
  factory _$$GameStateStartCopyWith(
          _$GameStateStart value, $Res Function(_$GameStateStart) then) =
      __$$GameStateStartCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Question> listQuestions, int index});
}

/// @nodoc
class __$$GameStateStartCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateStart>
    implements _$$GameStateStartCopyWith<$Res> {
  __$$GameStateStartCopyWithImpl(
      _$GameStateStart _value, $Res Function(_$GameStateStart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listQuestions = null,
    Object? index = null,
  }) {
    return _then(_$GameStateStart(
      listQuestions: null == listQuestions
          ? _value.listQuestions
          : listQuestions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GameStateStart extends GameStateStart {
  _$GameStateStart({required this.listQuestions, required this.index})
      : super._();

  @override
  final List<Question> listQuestions;
  @override
  final int index;

  @override
  String toString() {
    return 'GameState.start(listQuestions: $listQuestions, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateStart &&
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
  _$$GameStateStartCopyWith<_$GameStateStart> get copyWith =>
      __$$GameStateStartCopyWithImpl<_$GameStateStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Question> listQuestions) loaded,
    required TResult Function(List<Question> listQuestions, int index) start,
    required TResult Function(int index, List<Question> listQuestions,
            List<Question>? goodAnswers, List<Question>? badAnswers)
        nextQuestion,
    required TResult Function(int index, List<Question> listQuestions)
        wrongAnswer,
    required TResult Function(int index, List<Question> listQuestions)
        rightAnswer,
    required TResult Function(String failed) failed,
  }) {
    return start(listQuestions, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Question> listQuestions)? loaded,
    TResult? Function(List<Question> listQuestions, int index)? start,
    TResult? Function(int index, List<Question> listQuestions,
            List<Question>? goodAnswers, List<Question>? badAnswers)?
        nextQuestion,
    TResult? Function(int index, List<Question> listQuestions)? wrongAnswer,
    TResult? Function(int index, List<Question> listQuestions)? rightAnswer,
    TResult? Function(String failed)? failed,
  }) {
    return start?.call(listQuestions, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> listQuestions)? loaded,
    TResult Function(List<Question> listQuestions, int index)? start,
    TResult Function(int index, List<Question> listQuestions,
            List<Question>? goodAnswers, List<Question>? badAnswers)?
        nextQuestion,
    TResult Function(int index, List<Question> listQuestions)? wrongAnswer,
    TResult Function(int index, List<Question> listQuestions)? rightAnswer,
    TResult Function(String failed)? failed,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(listQuestions, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateLoading value) loading,
    required TResult Function(GameStateLoaded value) loaded,
    required TResult Function(GameStateStart value) start,
    required TResult Function(GameStateNextQuestion value) nextQuestion,
    required TResult Function(GameStateWrongAnswer value) wrongAnswer,
    required TResult Function(GameStateRightAnswer value) rightAnswer,
    required TResult Function(GameStateFailed value) failed,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateLoading value)? loading,
    TResult? Function(GameStateLoaded value)? loaded,
    TResult? Function(GameStateStart value)? start,
    TResult? Function(GameStateNextQuestion value)? nextQuestion,
    TResult? Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult? Function(GameStateRightAnswer value)? rightAnswer,
    TResult? Function(GameStateFailed value)? failed,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateLoading value)? loading,
    TResult Function(GameStateLoaded value)? loaded,
    TResult Function(GameStateStart value)? start,
    TResult Function(GameStateNextQuestion value)? nextQuestion,
    TResult Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult Function(GameStateRightAnswer value)? rightAnswer,
    TResult Function(GameStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class GameStateStart extends GameState {
  factory GameStateStart(
      {required final List<Question> listQuestions,
      required final int index}) = _$GameStateStart;
  GameStateStart._() : super._();

  List<Question> get listQuestions;
  int get index;
  @JsonKey(ignore: true)
  _$$GameStateStartCopyWith<_$GameStateStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameStateNextQuestionCopyWith<$Res> {
  factory _$$GameStateNextQuestionCopyWith(_$GameStateNextQuestion value,
          $Res Function(_$GameStateNextQuestion) then) =
      __$$GameStateNextQuestionCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int index,
      List<Question> listQuestions,
      List<Question>? goodAnswers,
      List<Question>? badAnswers});
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
    Object? index = null,
    Object? listQuestions = null,
    Object? goodAnswers = freezed,
    Object? badAnswers = freezed,
  }) {
    return _then(_$GameStateNextQuestion(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      listQuestions: null == listQuestions
          ? _value.listQuestions
          : listQuestions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      goodAnswers: freezed == goodAnswers
          ? _value.goodAnswers
          : goodAnswers // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
      badAnswers: freezed == badAnswers
          ? _value.badAnswers
          : badAnswers // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
    ));
  }
}

/// @nodoc

class _$GameStateNextQuestion extends GameStateNextQuestion {
  _$GameStateNextQuestion(
      {required this.index,
      required this.listQuestions,
      this.goodAnswers,
      this.badAnswers})
      : super._();

  @override
  final int index;
  @override
  final List<Question> listQuestions;
  @override
  final List<Question>? goodAnswers;
  @override
  final List<Question>? badAnswers;

  @override
  String toString() {
    return 'GameState.nextQuestion(index: $index, listQuestions: $listQuestions, goodAnswers: $goodAnswers, badAnswers: $badAnswers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateNextQuestion &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality()
                .equals(other.listQuestions, listQuestions) &&
            const DeepCollectionEquality()
                .equals(other.goodAnswers, goodAnswers) &&
            const DeepCollectionEquality()
                .equals(other.badAnswers, badAnswers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      index,
      const DeepCollectionEquality().hash(listQuestions),
      const DeepCollectionEquality().hash(goodAnswers),
      const DeepCollectionEquality().hash(badAnswers));

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
    required TResult Function(List<Question> listQuestions) loaded,
    required TResult Function(List<Question> listQuestions, int index) start,
    required TResult Function(int index, List<Question> listQuestions,
            List<Question>? goodAnswers, List<Question>? badAnswers)
        nextQuestion,
    required TResult Function(int index, List<Question> listQuestions)
        wrongAnswer,
    required TResult Function(int index, List<Question> listQuestions)
        rightAnswer,
    required TResult Function(String failed) failed,
  }) {
    return nextQuestion(index, listQuestions, goodAnswers, badAnswers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Question> listQuestions)? loaded,
    TResult? Function(List<Question> listQuestions, int index)? start,
    TResult? Function(int index, List<Question> listQuestions,
            List<Question>? goodAnswers, List<Question>? badAnswers)?
        nextQuestion,
    TResult? Function(int index, List<Question> listQuestions)? wrongAnswer,
    TResult? Function(int index, List<Question> listQuestions)? rightAnswer,
    TResult? Function(String failed)? failed,
  }) {
    return nextQuestion?.call(index, listQuestions, goodAnswers, badAnswers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> listQuestions)? loaded,
    TResult Function(List<Question> listQuestions, int index)? start,
    TResult Function(int index, List<Question> listQuestions,
            List<Question>? goodAnswers, List<Question>? badAnswers)?
        nextQuestion,
    TResult Function(int index, List<Question> listQuestions)? wrongAnswer,
    TResult Function(int index, List<Question> listQuestions)? rightAnswer,
    TResult Function(String failed)? failed,
    required TResult orElse(),
  }) {
    if (nextQuestion != null) {
      return nextQuestion(index, listQuestions, goodAnswers, badAnswers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateLoading value) loading,
    required TResult Function(GameStateLoaded value) loaded,
    required TResult Function(GameStateStart value) start,
    required TResult Function(GameStateNextQuestion value) nextQuestion,
    required TResult Function(GameStateWrongAnswer value) wrongAnswer,
    required TResult Function(GameStateRightAnswer value) rightAnswer,
    required TResult Function(GameStateFailed value) failed,
  }) {
    return nextQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameStateLoading value)? loading,
    TResult? Function(GameStateLoaded value)? loaded,
    TResult? Function(GameStateStart value)? start,
    TResult? Function(GameStateNextQuestion value)? nextQuestion,
    TResult? Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult? Function(GameStateRightAnswer value)? rightAnswer,
    TResult? Function(GameStateFailed value)? failed,
  }) {
    return nextQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStateLoading value)? loading,
    TResult Function(GameStateLoaded value)? loaded,
    TResult Function(GameStateStart value)? start,
    TResult Function(GameStateNextQuestion value)? nextQuestion,
    TResult Function(GameStateWrongAnswer value)? wrongAnswer,
    TResult Function(GameStateRightAnswer value)? rightAnswer,
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
  factory GameStateNextQuestion(
      {required final int index,
      required final List<Question> listQuestions,
      final List<Question>? goodAnswers,
      final List<Question>? badAnswers}) = _$GameStateNextQuestion;
  GameStateNextQuestion._() : super._();

  int get index;
  List<Question> get listQuestions;
  List<Question>? get goodAnswers;
  List<Question>? get badAnswers;
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
  $Res call({int index, List<Question> listQuestions});
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
    Object? index = null,
    Object? listQuestions = null,
  }) {
    return _then(_$GameStateWrongAnswer(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      listQuestions: null == listQuestions
          ? _value.listQuestions
          : listQuestions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc

class _$GameStateWrongAnswer extends GameStateWrongAnswer {
  _$GameStateWrongAnswer({required this.index, required this.listQuestions})
      : super._();

  @override
  final int index;
  @override
  final List<Question> listQuestions;

  @override
  String toString() {
    return 'GameState.wrongAnswer(index: $index, listQuestions: $listQuestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateWrongAnswer &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality()
                .equals(other.listQuestions, listQuestions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, index, const DeepCollectionEquality().hash(listQuestions));

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
    required TResult Function(List<Question> listQuestions) loaded,
    required TResult Function(List<Question> listQuestions, int index) start,
    required TResult Function(int index, List<Question> listQuestions,
            List<Question>? goodAnswers, List<Question>? badAnswers)
        nextQuestion,
    required TResult Function(int index, List<Question> listQuestions)
        wrongAnswer,
    required TResult Function(int index, List<Question> listQuestions)
        rightAnswer,
    required TResult Function(String failed) failed,
  }) {
    return wrongAnswer(index, listQuestions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Question> listQuestions)? loaded,
    TResult? Function(List<Question> listQuestions, int index)? start,
    TResult? Function(int index, List<Question> listQuestions,
            List<Question>? goodAnswers, List<Question>? badAnswers)?
        nextQuestion,
    TResult? Function(int index, List<Question> listQuestions)? wrongAnswer,
    TResult? Function(int index, List<Question> listQuestions)? rightAnswer,
    TResult? Function(String failed)? failed,
  }) {
    return wrongAnswer?.call(index, listQuestions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> listQuestions)? loaded,
    TResult Function(List<Question> listQuestions, int index)? start,
    TResult Function(int index, List<Question> listQuestions,
            List<Question>? goodAnswers, List<Question>? badAnswers)?
        nextQuestion,
    TResult Function(int index, List<Question> listQuestions)? wrongAnswer,
    TResult Function(int index, List<Question> listQuestions)? rightAnswer,
    TResult Function(String failed)? failed,
    required TResult orElse(),
  }) {
    if (wrongAnswer != null) {
      return wrongAnswer(index, listQuestions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateLoading value) loading,
    required TResult Function(GameStateLoaded value) loaded,
    required TResult Function(GameStateStart value) start,
    required TResult Function(GameStateNextQuestion value) nextQuestion,
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
    TResult? Function(GameStateStart value)? start,
    TResult? Function(GameStateNextQuestion value)? nextQuestion,
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
    TResult Function(GameStateStart value)? start,
    TResult Function(GameStateNextQuestion value)? nextQuestion,
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
      {required final int index,
      required final List<Question> listQuestions}) = _$GameStateWrongAnswer;
  GameStateWrongAnswer._() : super._();

  int get index;
  List<Question> get listQuestions;
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
  $Res call({int index, List<Question> listQuestions});
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
    Object? index = null,
    Object? listQuestions = null,
  }) {
    return _then(_$GameStateRightAnswer(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      listQuestions: null == listQuestions
          ? _value.listQuestions
          : listQuestions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc

class _$GameStateRightAnswer extends GameStateRightAnswer {
  _$GameStateRightAnswer({required this.index, required this.listQuestions})
      : super._();

  @override
  final int index;
  @override
  final List<Question> listQuestions;

  @override
  String toString() {
    return 'GameState.rightAnswer(index: $index, listQuestions: $listQuestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateRightAnswer &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality()
                .equals(other.listQuestions, listQuestions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, index, const DeepCollectionEquality().hash(listQuestions));

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
    required TResult Function(List<Question> listQuestions) loaded,
    required TResult Function(List<Question> listQuestions, int index) start,
    required TResult Function(int index, List<Question> listQuestions,
            List<Question>? goodAnswers, List<Question>? badAnswers)
        nextQuestion,
    required TResult Function(int index, List<Question> listQuestions)
        wrongAnswer,
    required TResult Function(int index, List<Question> listQuestions)
        rightAnswer,
    required TResult Function(String failed) failed,
  }) {
    return rightAnswer(index, listQuestions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Question> listQuestions)? loaded,
    TResult? Function(List<Question> listQuestions, int index)? start,
    TResult? Function(int index, List<Question> listQuestions,
            List<Question>? goodAnswers, List<Question>? badAnswers)?
        nextQuestion,
    TResult? Function(int index, List<Question> listQuestions)? wrongAnswer,
    TResult? Function(int index, List<Question> listQuestions)? rightAnswer,
    TResult? Function(String failed)? failed,
  }) {
    return rightAnswer?.call(index, listQuestions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> listQuestions)? loaded,
    TResult Function(List<Question> listQuestions, int index)? start,
    TResult Function(int index, List<Question> listQuestions,
            List<Question>? goodAnswers, List<Question>? badAnswers)?
        nextQuestion,
    TResult Function(int index, List<Question> listQuestions)? wrongAnswer,
    TResult Function(int index, List<Question> listQuestions)? rightAnswer,
    TResult Function(String failed)? failed,
    required TResult orElse(),
  }) {
    if (rightAnswer != null) {
      return rightAnswer(index, listQuestions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStateLoading value) loading,
    required TResult Function(GameStateLoaded value) loaded,
    required TResult Function(GameStateStart value) start,
    required TResult Function(GameStateNextQuestion value) nextQuestion,
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
    TResult? Function(GameStateStart value)? start,
    TResult? Function(GameStateNextQuestion value)? nextQuestion,
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
    TResult Function(GameStateStart value)? start,
    TResult Function(GameStateNextQuestion value)? nextQuestion,
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
      {required final int index,
      required final List<Question> listQuestions}) = _$GameStateRightAnswer;
  GameStateRightAnswer._() : super._();

  int get index;
  List<Question> get listQuestions;
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
    required TResult Function(List<Question> listQuestions) loaded,
    required TResult Function(List<Question> listQuestions, int index) start,
    required TResult Function(int index, List<Question> listQuestions,
            List<Question>? goodAnswers, List<Question>? badAnswers)
        nextQuestion,
    required TResult Function(int index, List<Question> listQuestions)
        wrongAnswer,
    required TResult Function(int index, List<Question> listQuestions)
        rightAnswer,
    required TResult Function(String failed) failed,
  }) {
    return failed(this.failed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Question> listQuestions)? loaded,
    TResult? Function(List<Question> listQuestions, int index)? start,
    TResult? Function(int index, List<Question> listQuestions,
            List<Question>? goodAnswers, List<Question>? badAnswers)?
        nextQuestion,
    TResult? Function(int index, List<Question> listQuestions)? wrongAnswer,
    TResult? Function(int index, List<Question> listQuestions)? rightAnswer,
    TResult? Function(String failed)? failed,
  }) {
    return failed?.call(this.failed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> listQuestions)? loaded,
    TResult Function(List<Question> listQuestions, int index)? start,
    TResult Function(int index, List<Question> listQuestions,
            List<Question>? goodAnswers, List<Question>? badAnswers)?
        nextQuestion,
    TResult Function(int index, List<Question> listQuestions)? wrongAnswer,
    TResult Function(int index, List<Question> listQuestions)? rightAnswer,
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
    required TResult Function(GameStateStart value) start,
    required TResult Function(GameStateNextQuestion value) nextQuestion,
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
    TResult? Function(GameStateStart value)? start,
    TResult? Function(GameStateNextQuestion value)? nextQuestion,
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
    TResult Function(GameStateStart value)? start,
    TResult Function(GameStateNextQuestion value)? nextQuestion,
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
