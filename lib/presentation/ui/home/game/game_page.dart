import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:swiping_card_deck/swiping_card_deck.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/list_questions/question_model.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/game_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/game_state.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/game/game_provider.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/game/widgets/game_page_main.dart';

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
          wrongAnswer: (value) =>  _swipingDeck.swipeLeft(),
          rightAnswer: (value) => _swipingDeck.swipeRight(),
          failed: (value) => debugPrint(value.failed),
          orElse: () => null,
        ),
        child: ListView(
          children: [
            BlocBuilder<GameCubit, GameState>(
              buildWhen: (previous, current) => current is GameStateLoaded,
              builder: (context, state) {
                return Stack(
                  children: [
                    _swipingDeck = SwipingCardDeck(
                      cardDeck: getCardDeck(listQuestions: state.listQuestions),
                      onDeckEmpty: () => context.read<GameCubit>().endGame(),
                      onLeftSwipe: (Card card) => debugPrint("Swiped left!"),
                      onRightSwipe: (Card card) => debugPrint("Swiped right!"),
                      cardWidth: 200,
                      swipeThreshold: MediaQuery.of(context).size.width / 3,
                      minimumVelocity: 1000,
                      rotationFactor: 0.8 / 3.14,
                      swipeAnimationDuration: const Duration(milliseconds: 500),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 3,
                      color: Colors.transparent,
                    ),
                  ],
                );
              },
            ),
            GamePageMain(),
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
