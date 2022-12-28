import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/constants.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/list_questions/question_model.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/user/user_model.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/game_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/domain/entities/game_entity.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/game_state.dart';

class GameCubit extends Cubit<GameState> {
  GameRepositoryImpl listQuestionsRepository;
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
    final result =
        await listQuestionsRepository.getQuestionsByDifficulty();
    if (result is SuccessResponse) {
      if (result.data != null) {
        emit(
          GameStateLoaded(
            gameEntity: GameEntity(
              listQuestions: result.data!.results,
              index: 0,
              score: 0,
              goodAnswer: 0,
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

  void endGame() async {
    emit(
      GameStateLoading(),
    );
    final result = await authRepository.getCurrentUser();
    if (result is SuccessResponse) {
      var date = DateTime.now();
      if (result.data != null) {
        var userBdd = result.data!;
        int numberDayLogged = consecutiveDateCalculation(
          from: userBdd.dateOfLastGame,
        );
        UserModel user = userBdd.copyWith(
          score: userBdd.score + state.score,
          numberGoodAnswer: userBdd.numberGoodAnswer + state.goodAnswer,
          dateOfLastGame: "${date.year}-${date.month}-${date.day}",
          numberDayLogged: (numberDayLogged > 1)
              ? userBdd.numberDayLogged + numberDayLogged
              : 0,
        );
        final resultUpdate = await authRepository.updateUser(user: user);
        if (resultUpdate is SuccessResponse) {
          emit(
            GameStateFinished(
              score: state.score,
              goodAnswer: state.goodAnswer,
            ),
          );
        }
      }
    } else {
      emit(
        GameStateFailed(
          failed: result.toString(),
        ),
      );
    }
  }

  void checkAnswer(String answer) {
    int index = state.index;
    QuestionModel questionModel = state.listQuestions[index];

    if (questionModel.correct_answer == answer) {
      emit(
        GameStateRightAnswer(
          gameEntity: GameEntity(
            listQuestions: state.listQuestions,
            index: index + 1,
            score: scoreCalculation(questionModel.difficulty),
            goodAnswer: state.goodAnswer + 1,
          ),
        ),
      );
    } else {
      emit(
        GameStateWrongAnswer(
          gameEntity: GameEntity(
            listQuestions: state.listQuestions,
            index: index + 1,
            score: scoreCalculation(questionModel.difficulty),
            goodAnswer: state.goodAnswer,
          ),
        ),
      );
    }
  }
}
