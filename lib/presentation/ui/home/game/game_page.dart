import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:swiping_card_deck/swiping_card_deck.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/list_questions/question_model.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/game_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/game_state.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/game/game_provider.dart';

class GamePage extends StatefulWidget {
  const GamePage({
    Key? key,
  }) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

late SwipingDeck _swipingDeck;
var unescape = HtmlUnescape();

class _GamePageState extends State<GamePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GameProvider(
      child: BlocListener<GameCubit, GameState>(
        listener: (context, state) => state.maybeMap(
          wrongAnswer: (value) => debugPrint("Wrong answer"),
          rightAnswer: (value) => debugPrint("Right answer"),
          failed: (value) => debugPrint(value.failed),
          orElse: () => null,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            BlocBuilder<GameCubit, GameState>(
              buildWhen: (previous, current) => current is GameStateLoaded,
              builder: (context, state) {
                return Stack(
                  children: [
                    _swipingDeck = SwipingCardDeck(
                      cardDeck: getCardDeck(listQuestions: state.listQuestions),
                      onDeckEmpty: () => null,
                      onLeftSwipe: (Card card) => debugPrint("Swiped left!"),
                      onRightSwipe: (Card card) => debugPrint("Swiped right!"),
                      cardWidth: 200,
                      swipeThreshold: MediaQuery.of(context).size.width / 3,
                      minimumVelocity: 1000,
                      rotationFactor: 0.8 / 3.14,
                      swipeAnimationDuration: const Duration(milliseconds: 500),
                    ),
                    /*Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 3,
                      color: Colors.red,
                    ),*/
                  ],
                );
              },
            ),
            BlocBuilder<GameCubit, GameState>(
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
                              _swipingDeck.swipeRight();
                              context.read<GameCubit>().checkAnswer(e);
                            },
                            child: Card(
                              margin: const EdgeInsets.all(10),
                              color: const Color.fromRGBO(226, 149, 120, 1),
                              shadowColor:
                                  const Color.fromRGBO(255, 221, 210, 1),
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
            ),
          ],
        ),
      ),
    );
  }

  List<Card> getCardDeck({required List<QuestionModel> listQuestions}) {
    List<Card> cardDeck = [];
    for (QuestionModel question in listQuestions) {
      cardDeck.add(
        Card(
          color: const Color.fromRGBO(255, 221, 210, 1),
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            width: 250,
            height: 250,
            child: Text(
              unescape.convert(question.question),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
        ),
      );
    }
    return cardDeck;
  }
}
