import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/list_questions.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/choice_params_game_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/game/widgets/pop_up/choice_params_modal.dart';

class GamePageAlreadyPlayedToday extends StatelessWidget {
  GamePageAlreadyPlayedToday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ChoiceParamsGameCubit(
        gameRepositoryImpl: context.read<ListQuestionsRepositoryImpl>(),
      )..choiceParamsGame(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "You have already played today",
            style: Theme.of(context).textTheme.headline5,
          ),
          Text(
            "...",
            style: Theme.of(context).textTheme.headline5,
          ),
          Text(
            "But you can play again with new parameters",
            style: Theme.of(context).textTheme.headline6,
          ),
          ChoiceParamsModal(),
        ],
      ),
    );
  }
}
