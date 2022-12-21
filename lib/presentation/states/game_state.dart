import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/domain/entities/question.dart';

part 'game_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class GameState with _$GameState {
  const GameState._();

  factory GameState.loading() = GameStateLoading;

  factory GameState.loaded({
    required List<Question> listQuestions,
  }) = GameStateLoaded;

  factory GameState.start({
    required List<Question> listQuestions,
    required int index,
  }) = GameStateStart;

  factory GameState.nextQuestion({
    required int index,
    required List<Question> listQuestions,
    List<Question>? goodAnswers,
    List<Question>? badAnswers,
  }) = GameStateNextQuestion;

  factory GameState.wrongAnswer({
    required int index,
    required List<Question> listQuestions,
  }) = GameStateWrongAnswer;

  factory GameState.rightAnswer({
    required int index,
    required List<Question> listQuestions,
  }) = GameStateRightAnswer;

  factory GameState.failed({required String failed}) = GameStateFailed;

  List<Question> get listQuestions => maybeMap(
        loaded: (value) => value.listQuestions,
        orElse: () => [],
      );

  List<Question> get currentGoodAnswers => maybeMap(
        nextQuestion: (value) => value.goodAnswers ?? [],
        orElse: () => [],
      );

  List<Question> get currentBadAnswers => maybeMap(
        nextQuestion: (value) => value.badAnswers ?? [],
        orElse: () => [],
      );

  int get index => maybeMap(
        nextQuestion: (value) => value.index,
        orElse: () => 0,
      );

  String get error => maybeMap(
        failed: (value) => value.failed,
        orElse: () => "",
      );
}
