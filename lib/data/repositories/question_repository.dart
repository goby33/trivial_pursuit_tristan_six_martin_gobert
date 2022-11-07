import 'package:trivial_pursuit_app/data/jeux/entities/list_questions.dart';
import 'package:trivial_pursuit_app/data/sources/question_api.dart';
import 'package:trivial_pursuit_app/data/sources/question_firebase.dart';

class QuestionRepository {
  static QuestionRepository? _instanceQuestionRepository;
  static QuestionApi? _instanceQuestionApi;
  static QuestionFirebase? _instanceQuestionFirebase;

  QuestionRepository._();

  static QuestionRepository getInstance() {
    _instanceQuestionApi ??= QuestionApi.getInstance();
    _instanceQuestionFirebase ??= QuestionFirebase.getInstance();
    _instanceQuestionRepository ??= QuestionRepository._();
    return _instanceQuestionRepository!;
  }

  Future<ListQuestions> getQuestionOfTheDay() async {
    ListQuestions? resultFirebase =
        await _instanceQuestionFirebase?.getQuestionsOfToDay();
    if (resultFirebase != null) {
      return resultFirebase;
    } else {
      ListQuestions? resultApi = await _instanceQuestionApi?.getQuestions();
      if (resultApi != null) {
        _instanceQuestionFirebase?.post(resultApi);
      }
      return resultApi!;
    }
  }
}
