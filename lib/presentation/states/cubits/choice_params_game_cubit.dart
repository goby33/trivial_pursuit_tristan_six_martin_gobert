import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/api_response.dart';
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
    final response_api =  await gameRepositoryImpl.getListCategories();
    if (response_api is SuccessResponse && response_api.data != null) {
      emit(
        ChoiceParamsGameStateLoaded( params: ParamsGameEntity(
          difficulty_question: DIFFICULTY_QUESTION.easy,
          type_question: TYPE_QUESTION.any,
        ),
            list_categories : response_api.data!),
      );
    } else {
      emit(
        ChoiceParamsGameStateFailed(
          message: response_api.failure!, dateTime: DateTime.now(),
        ),
      );
    }
  }

  void setDifficulty(DIFFICULTY_QUESTION difficulty) {
    gameRepositoryImpl.setDifficultyQuestion(difficulty_question: difficulty);
    emit(
      ChoiceParamsGameStateLoaded( params: ParamsGameEntity(
            difficulty_question: difficulty,
            type_question: state.params!.type_question,
          ), list_categories: state.list_categories!),
    );
  }

  void setType(TYPE_QUESTION type) {
    gameRepositoryImpl.setTypeQuestion(type_question: type);
    emit(
      ChoiceParamsGameStateLoaded( params: ParamsGameEntity(
            difficulty_question: state.params!.difficulty_question,
            type_question: type,
          ), list_categories: state.list_categories!,
      ),
    );
  }
}
