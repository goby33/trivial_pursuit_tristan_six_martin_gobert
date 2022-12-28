import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/constants.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/choice_params_game_cubit.dart';

import 'choice_chip_modal.dart';

class ChoiceDifficulty extends StatelessWidget {
  final DIFFICULTY_QUESTION difficultyChoose;
  ChoiceDifficulty({
    Key? key,
    required this.difficultyChoose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ChoiceChipModal(
          isSelected: (difficultyChoose == DIFFICULTY_QUESTION.easy) ? true : false,
          label: DIFFICULTY_QUESTION.easy.name,
          onSelected: (bool selected) => context
              .read<ChoiceParamsGameCubit>()
              .setDifficulty(DIFFICULTY_QUESTION.easy),
        ),
        ChoiceChipModal(
          isSelected: (difficultyChoose == DIFFICULTY_QUESTION.medium) ? true : false,
          label: DIFFICULTY_QUESTION.medium.name,
          onSelected: (bool selected) => context
              .read<ChoiceParamsGameCubit>()
              .setDifficulty(DIFFICULTY_QUESTION.medium),
        ),
        ChoiceChipModal(
          isSelected: (difficultyChoose == DIFFICULTY_QUESTION.hard) ? true : false,
          label: DIFFICULTY_QUESTION.hard.name,
          onSelected: (bool selected) => context
              .read<ChoiceParamsGameCubit>()
              .setDifficulty(DIFFICULTY_QUESTION.hard),
        ),
      ],
    );
  }
}
