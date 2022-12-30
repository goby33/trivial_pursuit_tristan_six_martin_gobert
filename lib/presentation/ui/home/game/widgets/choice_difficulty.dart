import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/constants.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/choice_params_game_cubit.dart';

import 'choice_chip_modal_score.dart';

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
          isSelected: (difficultyChoose == DIFFICULTY_QUESTION.any) ? true : false,
          label: DIFFICULTY_QUESTION.any.name,
          icon: Icons.psychology,
          onSelected: (bool selected) => context
              .read<ChoiceParamsGameCubit>()
              .setDifficulty(DIFFICULTY_QUESTION.any),
        ),
        ChoiceChipModal(
          isSelected: (difficultyChoose == DIFFICULTY_QUESTION.easy) ? true : false,
          label: DIFFICULTY_QUESTION.easy.name,
          icon: Icons.ice_skating,
          onSelected: (bool selected) => context
              .read<ChoiceParamsGameCubit>()
              .setDifficulty(DIFFICULTY_QUESTION.easy),
        ),
        ChoiceChipModal(
          isSelected: (difficultyChoose == DIFFICULTY_QUESTION.medium) ? true : false,
          label: DIFFICULTY_QUESTION.medium.name,
          icon: Icons.ac_unit,
          onSelected: (bool selected) => context
              .read<ChoiceParamsGameCubit>()
              .setDifficulty(DIFFICULTY_QUESTION.medium),
        ),
        ChoiceChipModal(
          isSelected: (difficultyChoose == DIFFICULTY_QUESTION.hard) ? true : false,
          label: DIFFICULTY_QUESTION.hard.name,
          icon: Icons.local_fire_department,
          onSelected: (bool selected) => context
              .read<ChoiceParamsGameCubit>()
              .setDifficulty(DIFFICULTY_QUESTION.hard),
        ),
      ],
    );
  }
}
