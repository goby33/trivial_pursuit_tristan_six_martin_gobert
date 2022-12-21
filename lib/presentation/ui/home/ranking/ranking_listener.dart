import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/ranking_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/ranking_state.dart';

class RankingListeners extends StatelessWidget {
  final Widget child;
  const RankingListeners({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RankingCubit, RankingState>(
      listener: (context, state) => state.maybeMap(
        failed: (value) => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            action: SnackBarAction(
              label: 'close',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
            content: Text(value.message),
          ),
        ),
        orElse: () => null,
      ),
      builder: (context, state) => child,
    );
  }
}