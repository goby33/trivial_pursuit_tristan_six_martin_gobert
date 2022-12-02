import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:swiping_card_deck/swiping_card_deck.dart';
import 'package:trivial_pursuit_app/data/repositories/question_repository.dart';
import 'package:trivial_pursuit_app/presentation/states/cubits/jeux_cubit.dart';
import 'package:trivial_pursuit_app/presentation/states/jeux_state.dart';

class Jeux extends StatefulWidget {
  const Jeux({Key? key}) : super(key: key);

  @override
  State<Jeux> createState() {
    // Avoid using private types in public APIs.
    return _JeuxState();
  }
}

class _JeuxState extends State<Jeux> {
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
    var unescape = HtmlUnescape();
    return RepositoryProvider(
      create: (context) => QuestionRepository.getInstance(),
      child: BlocProvider<JeuxCubit>(
        create: (context) =>
            JeuxCubit(questionRepository: context.read<QuestionRepository>())
              ..getQuestion(),
        child: BlocListener<JeuxCubit, JeuxState>(
          listener: (context, state) => state.maybeMap(
            orElse: () => null,
          ),
          child: BlocBuilder<JeuxCubit, JeuxState>(
            //buildWhen: (previousState, state) => state is! JeuxStateLoaded,
            builder: (context, state) {
              if (state is JeuxStateLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is JeuxStateLoaded) {
                return Column(
                  children: [
                    SwipingCardDeck(
                      cardDeck: state.partie!.results
                          .map(
                            (e) => Card(
                              child: Text(e.question),
                            ),
                          )
                          .toList(),
                      onDeckEmpty: () => debugPrint("Card deck empty"),
                      onLeftSwipe: (Card card) => debugPrint("Swiped left!"),
                      onRightSwipe: (Card card) => debugPrint("Swiped right!"),
                      cardWidth: 100,
                      swipeThreshold: MediaQuery.of(context).size.width / 3,
                      minimumVelocity: 1000,
                      rotationFactor: 0.8 / 3.14,
                      swipeAnimationDuration: const Duration(milliseconds: 500),
                    ),
                  ],
                );
              } else if (state is JeuxStateFailed) {
                return const Center(
                  child: Text("erro"),
                );
              } else {
                return const Center(
                  child: Text("Error"),
                );
              }
            },
          ),
        ),
      ),
    );
  }

  void showLoading() {
    const Text("ppp");
  }
}

// show Everlai

// stockTake => single bloc obsertver => main  52
