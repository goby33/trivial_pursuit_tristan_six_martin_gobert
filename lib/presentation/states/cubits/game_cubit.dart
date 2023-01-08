import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/constants.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/list_questions/question_model.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/user/user_model.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/list_questions.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/user_model_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/domain/entities/game_entity.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/game_state.dart';

class GameCubit extends Cubit<GameState> {
  ListQuestionsRepositoryImpl listQuestionsRepository;
  AuthRepositoryImpl authRepository;
  UserModelRepositoryImpl userModelRepositoryImpl;

  GameCubit({
    required this.listQuestionsRepository,
    required this.authRepository,
    required this.userModelRepositoryImpl,
  }) : super(GameStateLoading());

  Future<void> getQuestionsOfTheDay() async {
    final userModel = await userModelRepositoryImpl.getUserModelData();
    if (userModel != null) {
      final userModel_dateOfLastGame = userModel.dateOfLastGame;
      // check if the user has already played today
      if (userModel_dateOfLastGame != null &&
          userModel_dateOfLastGame == getDateToday()) {
        // already played today
        emit(GameStateAlreadyPlayedToday());
      } else {
        // not played today
        final questions_response =
            await listQuestionsRepository.getQuestionsOfTheDay();
        if (questions_response is SuccessResponse &&
            questions_response.data != null) {
          final list_questions = questions_response.data;
          emit(
            GameStateLoaded(
              gameEntity: GameEntity(
                listQuestions: list_questions!.results,
                index: 0,
                score: 0,
                goodAnswer: 0,
                listAnswers: shuffleAnswers(list_questions.results[0]),
              ),
            ),
          );
        } else {
          // data is null or error firebase
          emit(GameStateFailed(
            failed: questions_response.toString(),
          ));
        }
      }
    } else {
      // user is null
      emit(GameStateFailed(
        failed: "UserModel is null",
      ));
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
    if (from.length != 10) {
      List<String> dateSplit = from.split("-");
      String month = (dateSplit[1].length != 2)
          ? "0${dateSplit[1]}"
          : dateSplit[1];
      String day = (dateSplit[2].length != 2)
          ? "0${dateSplit[2]}"
          : dateSplit[2];
      from = "${dateSplit[0]}-$month-$day" + " 00:00:00";
    }
    DateTime dateFrom = DateTime.parse(from);
    DateTime dateNow = DateTime.now();
    int difference = dateNow.difference(dateFrom).inDays;
    return difference;
  }

  void endGame() async {
    int currentScore = state.score;
    int currentGoodAnswer = state.goodAnswer;
    // get the uid of the user and the user model
    final User? user = authRepository.user;
    final UserModel? userModel =
        await userModelRepositoryImpl.getUserModelData();
    if (user != null && userModel != null) {
      // update the score and the good answer
      int newScore = userModel.score + currentScore;
      int newGoodAnswer = (userModel.numberGoodAnswer ?? 0) + currentGoodAnswer;
      // check if the user has already played today and update the date of last game
      if (userModel.dateOfLastGame != null && userModel.dateOfLastGame !=  getDateToday()) {
        int newConsecutiveDate =
        consecutiveDateCalculation(from: userModel.dateOfLastGame ?? "");
        if (newConsecutiveDate == 1) {
          newConsecutiveDate = (userModel.numberDayLogged ?? 0) + 1;
        } else {
          newConsecutiveDate = 0;
        }
        final response_update = await userModelRepositoryImpl.updateUserModel(
          user: userModel.copyWith(
            score: newScore,
            numberGoodAnswer: newGoodAnswer,
            numberDayLogged: newConsecutiveDate,
            dateOfLastGame: getDateToday(),
          ),
          uid: user.uid,
        );
        if (response_update is SuccessResponse) {
          emit(
            GameStateFinished(
              score: currentScore,
              goodAnswer: currentGoodAnswer,
            ),
          );
        } else {
          emit(
            GameStateFailed(
              failed: response_update.toString(),
            ),
          );
        }
      } else {
        emit(
          GameStateFinished(
            score: currentScore,
            goodAnswer: currentGoodAnswer,
          ),
        );
      }

      // check if the user has played yesterday ? update the consecutive date : update the date of last game
    } else {
      emit(
        GameStateFailed(
          failed: "User or UserModel is null",
        ),
      );
    }

    // emit the state
  }

  // TODO delete listQuestions
  void checkAnswer(String answer) {
    int index = state.index;
    QuestionModel questionModel = state.listQuestions[index];

    if (questionModel.correct_answer == answer) {
      int score = scoreCalculation(questionModel.difficulty);
      emit(
        GameStateRightAnswer(
          gameEntity: GameEntity(
            listQuestions: state.listQuestions,
            index: index,
            score: score,
            goodAnswer: state.goodAnswer + 1,
            listAnswers: state.listAnswers,
          ),
        ),
      );
    } else {
      emit(
        GameStateWrongAnswer(
          gameEntity: GameEntity(
            listQuestions: state.listQuestions,
            index: index,
            score: state.score,
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

  // TODO delete listQuestions
  void nextQuestion() {
    int index = state.index;
    //check if the index is the last question
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
      // end game
      endGame();
    }
  }
}
