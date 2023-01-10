import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/categories/list_categories_model.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/choice_params_game_cubit.dart';

class ChoiceCategory extends StatelessWidget {
  final int? categoryChoose;
  final ListCategoriesModel listCategory;
  ChoiceCategory({
    Key? key,
    required this.categoryChoose,
    required this.listCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: listCategory.trivia_categories.map((category) {
          bool isCategoryChoose = (categoryChoose == category.id);
          return Container(
              height: 40,
              decoration: BoxDecoration(
                color:    isCategoryChoose ? Colors.grey : Colors.white
              ),
              child: TextButton(
                onPressed: () {
                  if (isCategoryChoose) {
                    context.read<ChoiceParamsGameCubit>().setCategory(categoryModel:  null);
                  } else {
                    context.read<ChoiceParamsGameCubit>().setCategory(categoryModel: category);
                  }
                },
                child: Text(category.name),
              ),
          );
        }).toList(),
      ),
    );
  }
}
