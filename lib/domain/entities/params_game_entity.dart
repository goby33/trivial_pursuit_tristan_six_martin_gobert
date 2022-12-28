import 'package:trivial_pursuit_six_tristan_gobert_martin/config/constants.dart';

class ParamsGameEntity {
   DIFFICULTY_QUESTION difficulty_question;
   TYPE_QUESTION type_question;

  ParamsGameEntity({
    required this.difficulty_question,
    required this.type_question,
  });

  void setDifficultyQuestion(DIFFICULTY_QUESTION difficulty_question) {
    this.difficulty_question = difficulty_question;
  }

  void setTypeQuestion(TYPE_QUESTION type_question) {
    this.type_question = type_question;
  }

  String getPath() {
    String path = "&";
    if (type_question != TYPE_QUESTION.any) {
      path += "type=" + type_question.name + "&";
    }
    if (difficulty_question != DIFFICULTY_QUESTION.any) {
      path += "difficulty=" + difficulty_question.name + "&";
    }
    return path;
  }
}
