import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/list_questions_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/domain/entities/question.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/game_state.dart';

class GameCubit extends Cubit<GameState> {
  ListQuestionsRepositoryImpl listQuestionsRepository;
  int score = 0;
  int index = 0;
  List<Question> listQuestions = [];

  GameCubit({required this.listQuestionsRepository})
      : super(GameStateLoading());

  Future<void> getQuestions() async {
    try {
      emit(
        GameStateLoading(),
      );
      var result = await listQuestionsRepository.getQuestions();
      if (result != null) {
        emit(
          GameStateLoaded(
            listQuestions: result.listQuestions,
          ),
        );
      } else {
        emit(
          GameStateFailed(
            failed: "Error",
          ),
        );
      }
    } catch (e) {
      emit(
        GameStateFailed(
          failed: e.toString(),
        ),
      );
    }
  }

  void startGame() {
    emit(
      GameStateStart(
        listQuestions: state.listQuestions,
        index: state.index,
      ),
    );
  }

  List<String> getResponses() {
    var acutel = state.listQuestions[state.index];
    return [acutel.correct_answer, ...acutel.incorrect_answers]
      ..shuffle()
      ..toList();
  }

  void nextQuestion({required String answer}) {
    List<Question> good = [];
    List<Question> bad = [];
    if (answer == state.listQuestions[state.index].correct_answer) {
      score++;
      good.add(state.listQuestions[state.index]);
      emit(GameStateRightAnswer(
          index: state.index, listQuestions: state.listQuestions));
    } else {
      bad.add(state.listQuestions[state.index]);
      emit(GameStateWrongAnswer(
          index: state.index, listQuestions: state.listQuestions));
    }
    if (state.index != state.listQuestions.length - 1) {
      emit(
        GameStateNextQuestion(
          index: state.index + 1,
          listQuestions: state.listQuestions,
          goodAnswers: good,
          badAnswers: bad,
        ),
      );
    } else {
      emit(
        GameStateFailed(
          failed: "c'est termine : $score",
        ),
      );
    }
  }
}

//splashPage
