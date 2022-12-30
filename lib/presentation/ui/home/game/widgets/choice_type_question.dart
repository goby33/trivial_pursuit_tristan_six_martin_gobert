import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/constants.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/choice_params_game_cubit.dart';

import 'choice_chip_modal_score.dart';

class ChoiceTypeQuestion extends StatelessWidget {
  final TYPE_QUESTION typeQuestionChoose;
  ChoiceTypeQuestion({
    Key? key,
    required this.typeQuestionChoose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ChoiceChipModal(
          isSelected: (typeQuestionChoose == TYPE_QUESTION.any) ? true : false,
          label: TYPE_QUESTION.any.name,
          icon: Icons.psychology,
          onSelected: (bool selected) => context
              .read<ChoiceParamsGameCubit>()
              .setType(TYPE_QUESTION.any),
        ),
        ChoiceChipModal(
          isSelected: (typeQuestionChoose == TYPE_QUESTION.multiple) ? true : false,
          label: TYPE_QUESTION.multiple.name,
          icon: Icons.ac_unit,
          onSelected: (bool selected) => context
              .read<ChoiceParamsGameCubit>()
              .setType(TYPE_QUESTION.multiple),
        ),
        ChoiceChipModal(
          icon: Icons.splitscreen,
          isSelected: (typeQuestionChoose == TYPE_QUESTION.boolean) ? true : false,
          label: TYPE_QUESTION.boolean.name,
          onSelected: (bool selected) => context
              .read<ChoiceParamsGameCubit>()
              .setType(TYPE_QUESTION.boolean),
        ),
      ],
    );
  }
}
