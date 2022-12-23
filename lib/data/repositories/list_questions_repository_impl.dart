import 'package:firebase_auth/firebase_auth.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/list_questions/list_questions_model.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/sources/list_questions_api.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/sources/list_questions_firebase.dart';

class ListQuestionsRepositoryImpl {
  static ListQuestionsRepositoryImpl? _listQuestionsRepositoryImpl;
  static ListQuestionsApi? _listQuestionApi;
  static ListQuestionsFirebase? _listQuestionFirebase;

  ListQuestionsRepositoryImpl._();

  static ListQuestionsRepositoryImpl getInstance() {
    _listQuestionApi ??= ListQuestionsApi.getInstance();
    _listQuestionFirebase ??= ListQuestionsFirebase.getInstance();
    _listQuestionsRepositoryImpl ??= ListQuestionsRepositoryImpl._();
    return _listQuestionsRepositoryImpl!;
  }

  Future<ApiResponse<ListQuestionsModel>> getQuestions() async {
    try {
      final resultFirebase = await _listQuestionFirebase!.getQuestionsOfToDay();
      if (resultFirebase != null) {
        return SuccessResponse(202.toString(), resultFirebase);
      } else {
        final listQuestionsModel = await _listQuestionApi?.getQuestions();
        if (listQuestionsModel != null) {
          await _listQuestionFirebase!.post(listQuestionsModel);
          return SuccessResponse(200.toString(), listQuestionsModel);
        } else {
          return FailResponse(404.toString(),
              failure: "ListQuestionsModel from API null");
        }
      }
    } on FirebaseAuthException catch (e) {
      return FailResponse(e.code, failure: e.message);
    } catch (e) {
      return FailResponse(0.toString(), failure: e.toString());
    }
  }
}
