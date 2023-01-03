import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/constants.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/list_questions/question_model.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/list_questions.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/domain/entities/game_entity.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/game_state.dart';

class GameCubit extends Cubit<GameState> {
  ListQuestionsRepositoryImpl listQuestionsRepository;
  AuthRepositoryImpl authRepository;

  GameCubit({
    required this.listQuestionsRepository,
    required this.authRepository,
  }) : super(GameStateLoading());

  Future<void> getQuestions() async {
    final result = await listQuestionsRepository.getQuestions();
    if (result is SuccessResponse) {
      if (result.data != null) {
        emit(
          GameStateLoaded(
            gameEntity: GameEntity(
              listQuestions: result.data!.results,
              index: 0,
              score: 0,
              goodAnswer: 0,
              listAnswers: shuffleAnswers(result.data!.results[0]),
            ),
          ),
        );
      } else {
        emit(
          GameStateFailed(
            failed: "No data",
          ),
        );
      }
    } else if (result is FailResponse) {
      emit(
        GameStateFailed(
          failed: result.toString(),
        ),
      );
    }
  }

  Future<void> getQuestionsWithDifficulty() async {
    //loading
    emit(
      GameStateLoading(),
    );
    final result = await listQuestionsRepository.getQuestionsByDifficulty();
    if (result is SuccessResponse) {
      if (result.data != null) {
        emit(
          GameStateLoaded(
            gameEntity: GameEntity(
              listQuestions: result.data!.results,
              index: 0,
              score: 0,
              goodAnswer: 0,
              listAnswers: shuffleAnswers(result.data!.results[0]),
            ),
          ),
        );
      } else {
        emit(
          GameStateFailed(
            failed: "No data",
          ),
        );
      }
    } else if (result is FailResponse) {
      emit(
        GameStateFailed(
          failed: result.toString(),
        ),
      );
    }
  }

  int scoreCalculation(String difficulty) {
    switch (difficulty) {
      case "easy":
        return state.score + EASY_SCORE;
      case "medium":
        return state.score + MEDIUM_SCORE;
      case "hard":
        return state.score + HARD_SCORE;
      default:
        return state.score;
    }
  }

  int consecutiveDateCalculation({required String from}) {
    final date = DateTime.parse(from);
    return DateTime.now().difference(date).inDays;
  }

  //TODO Save data
  void endGame() async {
    int currentScore = state.score;
    int currentGoodAnswer = state.goodAnswer;
    emit(
      GameStateFinished(
        score: currentScore,
        goodAnswer: currentGoodAnswer,
      ),
    );
  }

  void checkAnswer(String answer) {
    int index = state.index;
    QuestionModel questionModel = state.listQuestions[index];

    if (questionModel.correct_answer == answer) {
      emit(
        GameStateRightAnswer(
          gameEntity: GameEntity(
            listQuestions: state.listQuestions,
            index: index,
            score: scoreCalculation(questionModel.difficulty),
            goodAnswer: state.goodAnswer + 1,
            listAnswers: state.listAnswers,
          ),
        ),
      );
    } else {
      int score = scoreCalculation(questionModel.difficulty);
      emit(
        GameStateWrongAnswer(
          gameEntity: GameEntity(
            listQuestions: state.listQuestions,
            index: index,
            score: score,
            goodAnswer: state.goodAnswer,
            listAnswers: state.listAnswers,
          ),
        ),
      );
    }
  }

  List<String> shuffleAnswers(QuestionModel questionModel) {
    List<String> answers = [];
    answers.add(questionModel.correct_answer);
    answers.addAll(questionModel.incorrect_answers);
    answers.shuffle();
    return answers;
  }

  void nextQuestion() {
    int index = state.index;
    if (index < state.listQuestions.length - 1) {
      //next question
      emit(
        GameStateNextQuestion(
          gameEntity: GameEntity(
            listQuestions: state.listQuestions,
            index: index + 1,
            score: state.score,
            goodAnswer: state.goodAnswer,
            listAnswers: shuffleAnswers(state.listQuestions[index + 1]),
          ),
        ),
      );
    } else {
      endGame();
    }
  }
}
