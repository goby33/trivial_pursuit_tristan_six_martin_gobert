import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swiping_card_deck/swiping_card_deck.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/list_questions_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/domain/entities/question.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/game_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/game_state.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/game/game_listeners.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/game/game_provider.dart';

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
    return GameProvider(
      child: GameListeners(
        child: BlocBuilder<GameCubit, GameState>(
          builder: (context, state) {
            if (state is GameStateLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            return const Center(
              child: Text('hello'),
            );
          },
        ),
      ),
    );
  }
}
