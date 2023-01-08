import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/choice_params_game_state.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/choice_params_game_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/game_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/game/widgets/pop_up/choice_difficulty.dart';

import 'choice_category.dart';
import 'choice_type_question.dart';

class ChoiceParamsModal extends StatelessWidget {
  ChoiceParamsModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      height: 450,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Choose your parameters :",
            style: Theme.of(context).textTheme.headline5,
          ),
          BlocBuilder<ChoiceParamsGameCubit, ChoiceParamsGameState>(
            builder: (contextChoiceParams, stateChoiceParams) {
              if (stateChoiceParams is ChoiceParamsGameStateLoading)
                return Center(
                  child: CircularProgressIndicator(),
                );
              else
                return Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your difficulty : ",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 109, 119, 1),
                        ),
                      ),
                      ChoiceDifficulty(
                        difficultyChoose:
                            stateChoiceParams.params!.difficulty_question,
                      ),
                      Text("Your type of question : ",  style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 109, 119, 1),
                      ),),
                      ChoiceTypeQuestion(
                        typeQuestionChoose:
                            stateChoiceParams.params!.type_question,
                      ),
                      Text("Your Category : ",  style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 109, 119, 1),
                      ),),
                      ChoiceCategory(
                        categoryChoose:
                            stateChoiceParams.params!.category_question,
                        listCategory: stateChoiceParams.list_categories!,
                      ),
                      ElevatedButton(
                        style: Theme.of(context).elevatedButtonTheme.style,
                        onPressed: () => {
                          context
                              .read<GameCubit>()
                              .getQuestionsWithDifficulty(),
                        },
                        child: SizedBox(
                          width: double.infinity,
                          child: Center(
                            child: Text("Start"),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
            },
          ),
        ],
      ),
    );
  }
}
