import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/list_questions/question_model.dart';

class GameEntity {
  List<QuestionModel> listQuestions;
  List<String> listAnswers;
  int index;
  int score;
  int goodAnswer;

  GameEntity({
    required this.listQuestions,
    required this.index,
    required this.score,
    required this.goodAnswer,
    required this.listAnswers,
  });
}
