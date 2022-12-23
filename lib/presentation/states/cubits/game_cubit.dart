import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/api_response.dart';
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
    print("hello");
    try {
      final result = await listQuestionsRepository.getQuestions();
      if (result is SuccessResponse) {
        print("ok");
      } else {
        print("false");
      }
      emit(
        GameStateLoading(),
      );
    } catch (e) {
      emit(
        GameStateFailed(
          failed: e.toString(),
        ),
      );
    }
  }


}

//splashPage
