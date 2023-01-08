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
      child: Expanded(
        flex: 10,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Hello, You have already played today",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "...",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                        text: "You can play again",
                        style: Theme.of(context).textTheme.headline6,
                        children: [
                          TextSpan(
                            text: " but your score not will be saved",
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(color: Colors.blue),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 7,
              child: ChoiceParamsModal(isPopUp: false,),),
          ],
        ),
      ),
    );
  }
}
