import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/game_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/choice_params_game_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/game_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/game/widgets/choice_params_modal.dart';

class GamePageScore extends StatelessWidget {
  final int score;
  final int goodAnswers;
  GamePageScore({Key? key, required this.score, required this.goodAnswers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Finis !',
            style: Theme.of(context).textTheme.headline3,
          ),
          Text(
            'Good answers : ',
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height: 200.0,
            child: Stack(
              children: [
                Center(
                  child: Container(
                    width: 200,
                    height: 200,
                    child: TweenAnimationBuilder<double>(
                      tween: Tween<double>(begin: 0.0, end: goodAnswers / 10),
                      duration: const Duration(milliseconds: 3500),
                      builder: (context, value, _) => CircularProgressIndicator(
                        value: value,
                        strokeWidth: 10,
                        color: Color.fromRGBO(255, 221, 210, 1),
                        backgroundColor: Color.fromRGBO(226, 149, 120, 1),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        goodAnswers.toString(),
                        style: TextStyle(
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 109, 119, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text("Score"),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(score.toString()),
                ],
              ),
              Column(
                children: [
                  Text("Good Answer"),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(goodAnswers.toString()),
                ],
              ),
            ],
          ),
          Text(
            "Do you want to play again ?",
            style: Theme.of(context).textTheme.headline6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () => _showModal(buildContext: context),
                child: Text("Select your difficulty"),
              ),
            ],
          )
        ],
      ),
    );
  }

  void _showModal({
    required BuildContext buildContext,
  }) {
    showModalBottomSheet(
      context: buildContext,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      backgroundColor: Color.fromRGBO(237, 246, 249, 1),
      builder: (_) => BlocProvider(
        create: (_) => ChoiceParamsGameCubit(
          gameRepositoryImpl: buildContext.read<GameRepositoryImpl>(),
        )..choiceParamsGame(),
        child: BlocProvider.value(
          value: buildContext.read<GameCubit>(),
          child: ChoiceParamsModal(),
        ),
      ),
    );
  }
}
