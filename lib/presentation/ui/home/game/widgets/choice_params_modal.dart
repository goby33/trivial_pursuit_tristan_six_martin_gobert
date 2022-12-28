import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/choice_params_game_state.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/choice_params_game_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/game_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/game/widgets/choice_difficulty.dart';

import 'choice_type_question.dart';

class ChoiceParamsModal extends StatelessWidget {
  ChoiceParamsModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            "Choose your parameters :",
            style: Theme.of(context).textTheme.headline6,
          ),
          BlocBuilder<ChoiceParamsGameCubit, ChoiceParamsGameState>(
            builder: (contextChoiceParams, stateChoiceParams) {
              if (stateChoiceParams is ChoiceParamsGameStateLoading)
                return Center(
                  child: CircularProgressIndicator(),
                );
              else
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Your difficulty : "),
                    ChoiceDifficulty(
                      difficultyChoose:
                          stateChoiceParams.params!.difficulty_question,
                    ),
                    SizedBox(height: 20),
                    Text("Your type of question : "),
                    ChoiceTypeQuestion(
                      typeQuestionChoose:
                          stateChoiceParams.params!.type_question,
                    ),
                    ElevatedButton(
                      style: Theme.of(context).elevatedButtonTheme.style,
                      onPressed: () => {
                        Navigator.pop(context),
                        context.read<GameCubit>().getQuestionsWithDifficulty(),
                      },
                      child: SizedBox(
                        width: double.infinity,
                        child: Center(
                          child: Text("Start"),
                        ),
                      ),
                    ),
                  ],
                );
            },
          ),
        ],
      ),
    );
  }
}
