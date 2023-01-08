import 'package:flutter/cupertino.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/constants.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/categories/category_model.dart';

class ParamsGameEntity {
   DIFFICULTY_QUESTION difficulty_question;
   TYPE_QUESTION type_question;
   CategoryModel? category;

  ParamsGameEntity({
    required this.difficulty_question,
    required this.type_question,
    required this.category
  });


  void setDifficultyQuestion(DIFFICULTY_QUESTION difficulty_question) {
    this.difficulty_question = difficulty_question;
  }

  void setTypeQuestion(TYPE_QUESTION type_question) {
    this.type_question = type_question;
  }
  void setCategoryQuestion(CategoryModel? category) {
    this.category = category;
  }

  String getPath() {
    String path = "&";
    if (type_question != TYPE_QUESTION.any) {
      path += "type=" + type_question.name + "&";
    }
    if (difficulty_question != DIFFICULTY_QUESTION.any) {
      path += "difficulty=" + difficulty_question.name + "&";
    }
    if (category != null) {
      path += "category=" + category!.id.toString();
    }
    debugPrint(path);
    return path;
  }
}
