import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/constants.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/list_questions/question_model.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/user/user_model.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/list_questions_repository_impl.dart';
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
            index: 0,
            listQuestions: result.data!.results,
            score: 0,
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

  void updateUserScore({required int score}) async {
    //loading
    emit(
      GameStateLoading(),
    );
    final result = await authRepository.getCurrentUser();
    if (result is SuccessResponse) {
      if (result.data != null) {
        UserModel user = result.data!.copyWith(
          score: result.data!.score + score,
        );
        final resultUpdate = await authRepository.updateUser(user: user);
        if (resultUpdate is SuccessResponse) {
          emit(GameStateFinished(score: user.score));
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
    bool isFinished = index == NB_QUESTIONS - 1;

    if (questionModel.correct_answer == answer) {
      if (isFinished) {
        updateUserScore(
          score: scoreCalculation(questionModel.difficulty),
        );
      } else {
        emit(
          GameStateRightAnswer(
            index: index + 1,
            listQuestions: state.listQuestions,
            score: scoreCalculation(questionModel.difficulty),
          ),
        );
      }
    } else {
      if (isFinished) {
        updateUserScore(score: 0);
      } else {
        emit(
          GameStateWrongAnswer(
            index: index + 1,
            listQuestions: state.listQuestions,
            score: state.score,
          ),
        );
      }
    }
  }
}

//splashPage
