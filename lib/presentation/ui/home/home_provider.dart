import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/list_questions.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/user_model_repository_impl.dart';

class HomeProvider extends StatelessWidget {
  final Widget child;

  HomeProvider({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => ListQuestionsRepositoryImpl.getInstance(),),
        RepositoryProvider(create: (context) => UserModelRepositoryImpl.getInstance(),),
      ],
      child: child,
    );
  }
}
