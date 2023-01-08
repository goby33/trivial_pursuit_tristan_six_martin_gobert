import 'package:flutter/material.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/categories/list_categories_model.dart';

class ChoiceCategory extends StatelessWidget {
  final String? categoryChoose;
  final ListCategoriesModel listCategory;
  ChoiceCategory({
    Key? key,
    required this.categoryChoose,
    required this.listCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: listCategory.trivia_categories.map((category) {
          return Container(
            height: 30,
            child: TextButton(
              onPressed: () {
              },
              child: Text(category.name),
            ),
          );
        }).toList(),
      ),
    );
  }
}
