import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/list_questions/question_model.dart';

part 'game_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class GameState with _$GameState {
  const GameState._();

  factory GameState.loading() = GameStateLoading;

  factory GameState.loaded({
    required List<QuestionModel> listQuestions,
    required int index,
    required int score,
  }) = GameStateLoaded;

  factory GameState.wrongAnswer({
    required List<QuestionModel> listQuestions,
    required int index,
    required int score,
  }) = GameStateWrongAnswer;

  factory GameState.rightAnswer({
    required List<QuestionModel> listQuestions,
    required int index,
    required int score,
  }) = GameStateRightAnswer;

  factory GameState.finished({
    required int score,
  }) = GameStateFinished;

  factory GameState.failed({required String failed}) = GameStateFailed;

  List<QuestionModel> get listQuestions => maybeMap(
        loaded: (state) => state.listQuestions,
        rightAnswer: (state) => state.listQuestions,
        wrongAnswer: (state) => state.listQuestions,
        orElse: () => [],
      );

  int get index => maybeMap(
        loaded: (state) => state.index,
        rightAnswer: (state) => state.index,
        wrongAnswer: (state) => state.index,
        orElse: () => 0,
      );

  int get score => maybeMap(
        loaded: (state) => state.score,
        rightAnswer: (state) => state.score,
        wrongAnswer: (state) => state.score,
        finished: (state) => state.score,
        orElse: () => 0,
      );
}
