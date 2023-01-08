import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/categories/list_categories_model.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/list_questions/list_questions_model.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/domain/entities/params_game_entity.dart';

part 'choice_params_game_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ChoiceParamsGameState with _$ChoiceParamsGameState {
  const ChoiceParamsGameState._();

  factory ChoiceParamsGameState.loading() = ChoiceParamsGameStateLoading;

  factory ChoiceParamsGameState.loaded(
          {required ParamsGameEntity params,
          required ListCategoriesModel list_categories}) =
      ChoiceParamsGameStateLoaded;

  factory ChoiceParamsGameState.failed(
      {required DateTime dateTime,
      required String message}) = ChoiceParamsGameStateFailed;

  ParamsGameEntity? get params =>
      maybeMap(loaded: (loaded) => loaded.params, orElse: () => null);

  ListCategoriesModel? get list_categories => maybeMap(
    loaded: (loaded) => loaded.list_categories,
      orElse: () => null);
}
