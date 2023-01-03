import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/constants.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/list_questions.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/choice_params_game_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/game_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/game/widgets/choice_params_modal.dart';

import 'container_result_score.dart';

class GamePageScore extends StatelessWidget {
  final int score;
  final int goodAnswers;
  GamePageScore({Key? key, required this.score, required this.goodAnswers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Congratulations !',
            style: Theme.of(context).textTheme.headline4,
          ),
          SizedBox(
            height: 50,
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
                      tween: Tween<double>(begin: 0.0, end: score / (HARD_SCORE * NB_QUESTIONS)),
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
                        score.toString(),
                        style: TextStyle(
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(226, 149, 120, 1),
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

          Column(
            children: [
              ContainerResultScore(
                label: 'Score : ',
                value: score,
                icon: Icons.stars,
              ),
              SizedBox(
                height: 20.0,
              ),
              ContainerResultScore(
                label: 'Good answers : ',
                value: goodAnswers,
                icon: Icons.emoji_emotions,
              ),
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          ElevatedButton(
            style: Theme.of(context).elevatedButtonTheme.style,
            onPressed: () => _showModal(buildContext: context),
            child: SizedBox(
              width: double.infinity,
              height: 42.0,
              child: Center(
                child: Text("do you want to replay ?", style: TextStyle(fontSize: 18),),
              ),
            ),
          ),
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
          gameRepositoryImpl: buildContext.read<ListQuestionsRepositoryImpl>(),
        )..choiceParamsGame(),
        child: BlocProvider.value(
          value: buildContext.read<GameCubit>(),
          child: ChoiceParamsModal(),
        ),
      ),
    );
  }
}
