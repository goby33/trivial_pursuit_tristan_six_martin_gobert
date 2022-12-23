import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/list_questions_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/game_state.dart';

class GameCubit extends Cubit<GameState> {
  ListQuestionsRepositoryImpl listQuestionsRepository;
  int score = 0;

  GameCubit({required this.listQuestionsRepository})
      : super(GameStateLoading());

  Future<void> getQuestions() async {
    final result = await listQuestionsRepository.getQuestions();
    if (result is SuccessResponse) {
      if (result.data != null) {
        emit(
          GameStateLoaded(
            index: 0,
            listQuestions: result.data!.results,
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

  void checkAnswer(String answer) {
    int index = state.index;
    if (state.listQuestions[index].correct_answer == answer) {
      score++;
      emit(
        GameStateRightAnswer(
            index: index += 1, listQuestions: state.listQuestions),
      );
    } else {
      emit(
        GameStateWrongAnswer(
            index: index += 1, listQuestions: state.listQuestions),
      );
    }
  }
}

//splashPage
