import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/list_questions_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/game_cubit.dart';

class GameProvider extends StatelessWidget {
  final Widget child;
  const GameProvider({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => ListQuestionsRepositoryImpl.getInstance(),
      child: BlocProvider(
        create: (context) => GameCubit(
          listQuestionsRepository: context.read<ListQuestionsRepositoryImpl>(),
        )..getQuestions(),
        child: child,
      ),
    );
  }
}
