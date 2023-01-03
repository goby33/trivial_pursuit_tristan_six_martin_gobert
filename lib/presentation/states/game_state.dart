import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/list_questions/question_model.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/domain/entities/game_entity.dart';

part 'game_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class GameState with _$GameState {
  const GameState._();

  factory GameState.loading() = GameStateLoading;

  factory GameState.loaded({
    required GameEntity gameEntity,
  }) = GameStateLoaded;


  //next question
  factory GameState.nextQuestion({
    required GameEntity gameEntity,
  }) = GameStateNextQuestion;


  factory GameState.wrongAnswer({
    required GameEntity gameEntity,
  }) = GameStateWrongAnswer;

  factory GameState.rightAnswer({
    required GameEntity gameEntity,
  }) = GameStateRightAnswer;

  factory GameState.finished({
    required int score,
    required int goodAnswer,
  }) = GameStateFinished;

  factory GameState.failed({required String failed}) = GameStateFailed;

  List<QuestionModel> get listQuestions => maybeMap(
        loaded: (state) => state.gameEntity.listQuestions,
        rightAnswer: (state) => state.gameEntity.listQuestions,
        wrongAnswer: (state) => state.gameEntity.listQuestions,
        nextQuestion: (state) => state.gameEntity.listQuestions,
        orElse: () => [],
      );

  int get index => maybeMap(
        loaded: (state) => state.gameEntity.index,
        rightAnswer: (state) => state.gameEntity.index,
        wrongAnswer: (state) => state.gameEntity.index,
        nextQuestion: (state) => state.gameEntity.index,
        orElse: () => 0,
      );

  int get score => maybeMap(
        loaded: (state) => state.gameEntity.score,
        rightAnswer: (state) => state.gameEntity.score,
        wrongAnswer: (state) => state.gameEntity.score,
        nextQuestion: (state) => state.gameEntity.score,
        finished: (state) => state.score,
        orElse: () => 0,
      );

  int get goodAnswer => maybeMap(
        loaded: (state) => state.gameEntity.goodAnswer,
        rightAnswer: (state) => state.gameEntity.goodAnswer,
        wrongAnswer: (state) => state.gameEntity.goodAnswer,
        nextQuestion: (state) => state.gameEntity.goodAnswer,
        finished: (state) => state.goodAnswer,
        orElse: () => 0,
      );

  List<String> get listAnswers => maybeMap(
        loaded: (state) => state.gameEntity.listAnswers,
        rightAnswer: (state) => state.gameEntity.listAnswers,
        wrongAnswer: (state) => state.gameEntity.listAnswers,
        nextQuestion: (state) => state.gameEntity.listAnswers,
        orElse: () => [],
      );
}
