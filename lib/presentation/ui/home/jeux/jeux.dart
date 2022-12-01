import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return BlocListener<JeuxCubit, JeuxState>(
     listener: (context, state) => state.maybeMap(
        loaded: (value) => print(
          value.partie.listQuestions.results.length.toString(),
        ),
        loading: (value) => print(
          value.dateTime.toString(),
        ),
        orElse: () => null,
      ),
      child: BlocBuilder<JeuxCubit, JeuxState>(
        //buildWhen: (previousState, state) => state is! JeuxStateLoaded,
        builder: (context, state) {
          print(state);
          JeuxPlayers? jeuxPlayers = state.partie;
          if (jeuxPlayers != null) {
            return const Text("tout vas bien ");
          } else {
            return const Text('chargement');
          }
        },
      ),
    );
  }

  void showLoading() {
    Text("ppp");
  }
}


// show Everlai

// stockTake => single bloc obsertver => main  52