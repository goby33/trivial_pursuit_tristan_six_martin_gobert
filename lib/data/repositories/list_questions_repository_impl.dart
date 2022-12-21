import 'package:trivial_pursuit_six_tristan_gobert_martin/data/sources/list_questions_api.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/domain/entities/list_questions.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/domain/entities/question.dart';

class ListQuestionsRepositoryImpl {
  static ListQuestionsRepositoryImpl? _listQuestionsRepositoryImpl;
  static ListQuestionsApi? _listQuestionApi;

  ListQuestionsRepositoryImpl._();

  static ListQuestionsRepositoryImpl getInstance() {
    _listQuestionsRepositoryImpl ??= ListQuestionsRepositoryImpl._();
    _listQuestionApi ??= ListQuestionsApi.getInstance();
    return _listQuestionsRepositoryImpl!;
  }

  Future<ListQuestions?> getQuestions() async {
    final listQuestionsModel = await _listQuestionApi?.getQuestions();
    if (listQuestionsModel != null) {
      return ListQuestions(
          listQuestions: listQuestionsModel.results
              .map((e) => Question(
                  category: e.category,
                  type: e.type,
                  difficulty: e.difficulty,
                  question: e.question,
                  correct_answer: e.correct_answer,
                  incorrect_answers: e.incorrect_answers))
              .toList());
    }
    return null;
  }
}
