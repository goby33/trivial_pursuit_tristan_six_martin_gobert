import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/game_cubit.dart';

class ListTileGame extends StatelessWidget {
  final String title;
  final bool isSelected;
  ListTileGame({
    Key? key,
    required this.title,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        leading: const Icon(Icons.arrow_forward_ios),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        visualDensity: VisualDensity(vertical: -2),
        dense: true,
        selected: isSelected,
        tileColor: Color.fromRGBO(226, 149, 120, 1),
        selectedTileColor: Color.fromRGBO(118, 200, 147, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Color.fromRGBO(255, 221, 210, 1.0),
            fontSize: 20,
          ),
        ),
        onTap: () {
          context.read<GameCubit>().checkAnswer(title);
        },
      ),
    );
  }
}
