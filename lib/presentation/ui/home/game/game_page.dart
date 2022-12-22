import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swiping_card_deck/swiping_card_deck.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/list_questions_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/domain/entities/question.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/game_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/game_state.dart';

class GamePage extends StatefulWidget {
  const GamePage({
    Key? key,
  }) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

late SwipingCardDeck? _deck;

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
    return RepositoryProvider(
      create: (context) => ListQuestionsRepositoryImpl.getInstance(),
      child: BlocProvider<GameCubit>(
        create: (context) => GameCubit(
            listQuestionsRepository:
                context.read<ListQuestionsRepositoryImpl>())
          ..getQuestions(),
        child: BlocConsumer<GameCubit, GameState>(
            listener: (context, state) => state.maybeMap(
                  nextQuestion: (value) => _deck?.swipeRight(),
                  orElse: () => null,
                ),
            builder: (context, state) {
              final bloc = context.read<GameCubit>();
              if (state is GameStateLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is GameStateFailed) {
                return Center(
                  child: Text(state.failed),
                );
              } else if (state is GameStateLoaded) {
                _deck = SwipingCardDeck(
                  cardDeck: getCardDeck(listQuestions: state.listQuestions),
                  onDeckEmpty: () => debugPrint("Card deck empty"),
                  onLeftSwipe: (Card card) => debugPrint("Swiped left!"),
                  onRightSwipe: (Card card) => debugPrint("Swiped right!"),
                  cardWidth: 200,
                  swipeThreshold: MediaQuery.of(context).size.width / 3,
                  minimumVelocity: 1000,
                  rotationFactor: 0.8 / 3.14,
                  swipeAnimationDuration: const Duration(milliseconds: 500),
                );
                return InkWell(
                  onTap: () => bloc.startGame(),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 60.0,
                    child: const Text("START"),
                  ),
                );
              } else {
                return Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    _deck!,
                    Stack(
                      children: [
                        //deck
                        SizedBox(
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: bloc
                          .getResponses()
                          .map(
                            (e) => Card(
                              child: InkWell(
                                onTap: () => bloc.nextQuestion(answer: e),
                                child: SizedBox(
                                  width: 320.0,
                                  height: 60.0,
                                  child: Text(e.toString()),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: BlocBuilder<GameCubit, GameState>(
                            builder: (context, state) {
                              List<Question> listQuestions =
                                  state.currentGoodAnswers;
                              if (listQuestions.isEmpty) {
                                return const Text("No good answers");
                              } else {
                                return ListView.builder(
                                  itemCount: listQuestions.length,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      title:
                                          Text(listQuestions[index].question),
                                    );
                                  },
                                );
                              }
                            },
                          ),
                        ),
                        Expanded(
                          child: BlocBuilder<GameCubit, GameState>(
                            builder: (context, state) {
                              List<Question> listQuestions =
                                  state.currentBadAnswers;
                              if (listQuestions.isEmpty) {
                                return const Text("No bad answers");
                              } else {
                                return ListView.builder(
                                  itemCount: listQuestions.length,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      title:
                                          Text(listQuestions[index].question),
                                    );
                                  },
                                );
                              }
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                );
              }
            }),
      ),
    );
  }

  List<Card> getCardDeck({required List<Question> listQuestions}) {
    List<Card> cardDeck = [];
    for (Question question in listQuestions) {
      cardDeck.add(Card(
        child: SizedBox(
          width: 200,
          height: 100,
          child: Text(question.question),
        ),
      ));
    }
    return cardDeck;
  }
}
