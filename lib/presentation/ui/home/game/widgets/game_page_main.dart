import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/list_questions/question_model.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/game_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/game_state.dart';

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
        if (state is GameStateLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is GameStateFinished) {
          return Column(
            children: [
              Text(
                "You have finished the game with ${state.score} points",
                style: Theme.of(context).textTheme.headline6,
              ),
              TextButton(
                onPressed: () {
                  print("pp");
                },
                child: const Text("Play again"),
              ),
            ],
          );
        } else {
          return Column(
            children: getListAnswers(
                    listQuestions: state.listQuestions, index: state.index)
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
                        title: Text(
                          unescape.convert(e),
                        ),
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

  List<String> getListAnswers({
    required List<QuestionModel> listQuestions,
    required int index,
  }) {
    if (index > listQuestions.length - 1) {
      return [];
    }
    List<String>? listAnswers = [
      ...listQuestions[index].incorrect_answers,
      listQuestions[index].correct_answer
    ]
      ..shuffle()
      ..toList();
    return listAnswers;
  }
}
