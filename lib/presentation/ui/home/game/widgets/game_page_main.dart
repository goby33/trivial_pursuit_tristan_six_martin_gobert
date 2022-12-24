import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/game_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/game_state.dart';

class GamePageMain extends StatelessWidget {
  const GamePageMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameCubit, GameState>(
      builder: (context, state) {
        if (state is GameStateLoading) {
          return const Center(child: CircularProgressIndicator());
        } else {
          List<String> listQuestions = [
            ...state.listQuestions[state.index].incorrect_answers,
            state.listQuestions[state.index].correct_answer
          ]
            ..shuffle()
            ..toList();
          return Column(
            children: listQuestions
                .map(
                  (e) => InkWell(
                    onTap: () {
                      context.read<GameCubit>().checkAnswer(e);
                    },
                    child: Card(
                      margin: const EdgeInsets.all(10),
                      color: const Color.fromRGBO(226, 149, 120, 1),
                      shadowColor: const Color.fromRGBO(255, 221, 210, 1),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: ListTile(
                        leading: const Icon(Icons.arrow_forward_ios),
                        title: Text(e),
                      ),
                    ),
                  ),
                )
                .toList(),
          );
        }
      },
    );
  }
}
