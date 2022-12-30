import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/list_questions/question_model.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/game_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/game_state.dart';

import 'game_page_score.dart';

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
          return GamePageScore(
            score: state.score,
            goodAnswers: state.goodAnswer,
          );
        } else {
          final answer = getListAnswers(
              listQuestions: state.listQuestions, index: state.index);
          return Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: answer.length,
              separatorBuilder: (BuildContext context, int index) => SizedBox(
                height: 15,
              ),
              itemBuilder: (context, index) {
                bool isCorrect =
                    state.listQuestions[index].correct_answer == answer[index];
                return ListTile(
                    dense: true,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    visualDensity: VisualDensity(vertical: -2),
                    onTap: () => context.read<GameCubit>().checkAnswer(answer[index]),
                    selectedColor: Colors.green,
                    tileColor: const Color.fromRGBO(226, 149, 120, 1.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    title: Text(
                      unescape.convert(answer[index]),
                      style: const TextStyle(
                        color: Color.fromRGBO(255, 221, 210, 1.0),
                        fontSize: 20,
                      ),
                    ),
                    leading: const Icon(Icons.arrow_forward_ios),
                  );
              },
            ),
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