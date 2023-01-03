import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/constants.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/list_questions.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/domain/entities/params_game_entity.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/choice_params_game_state.dart';

class ChoiceParamsGameCubit extends Cubit<ChoiceParamsGameState> {
  ListQuestionsRepositoryImpl gameRepositoryImpl;
  ChoiceParamsGameCubit({required this.gameRepositoryImpl})
      : super(
          ChoiceParamsGameStateLoading(),
        );

  Future<void> choiceParamsGame() async {
    emit(
      ChoiceParamsGameStateLoading(),
    );
    emit(
      ChoiceParamsGameStateLoaded( params: ParamsGameEntity(
            difficulty_question: DIFFICULTY_QUESTION.easy,
            type_question: TYPE_QUESTION.any,
          ),
      ),
    );
  }

  void setDifficulty(DIFFICULTY_QUESTION difficulty) {
    gameRepositoryImpl.setDifficultyQuestion(difficulty);
    emit(
      ChoiceParamsGameStateLoaded( params: ParamsGameEntity(
            difficulty_question: difficulty,
            type_question: state.params!.type_question,
          ),
      ),
    );
  }

  void setType(TYPE_QUESTION type) {
    gameRepositoryImpl.setTypeQuestion(type);
    emit(
      ChoiceParamsGameStateLoaded( params: ParamsGameEntity(
            difficulty_question: state.params!.difficulty_question,
            type_question: type,
          ),
      ),
    );
  }
}
