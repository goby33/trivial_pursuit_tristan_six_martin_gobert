import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/game_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/game_state.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/game/widgets/game_page_already_played.dart';

import 'game_page_score.dart';
import 'response_question.dart';

class GamePageMain extends StatefulWidget {
  GamePageMain({Key? key}) : super(key: key);

  @override
  State<GamePageMain> createState() => _GamePageMainState();
}

class _GamePageMainState extends State<GamePageMain> {
  var unescape = HtmlUnescape();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameCubit, GameState>(
      builder: (context, state) {
        // if (state is GameStateLoaded)
        if (state is GameStateLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is GameStateFinished) {
          return GamePageScore(
            score: state.score,
            goodAnswers: state.goodAnswer,
          );
        } else if (state is GameStateAlreadyPlayedToday) {
          return GamePageAlreadyPlayedToday();
        } else {
          return Expanded(
            child: ListView.separated(
              itemCount: state.listAnswers.length,
              padding: const EdgeInsets.all(8),
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(
                    height: 15,
                  ),
              itemBuilder: (context, index) {
                return ListTileGame(
                  isSelected: (state is GameStateRightAnswer || state is GameStateWrongAnswer) ? state.listAnswers[index] == state.listQuestions[state.index].correct_answer : false,
                  title: unescape.convert(state.listAnswers[index]),
                );
              },
            ),
          );
        }
      },
    );
  }
}
