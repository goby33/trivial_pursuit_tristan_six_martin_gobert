import 'package:firebase_auth/firebase_auth.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/constants.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/list_questions/list_questions_model.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/sources/list_questions_api.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/sources/list_questions_firebase.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/domain/entities/params_game_entity.dart';

class ListQuestionsRepositoryImpl {
  static ListQuestionsApi? _listQuestionApi;
  static ListQuestionsFirebase? _listQuestionFirebase;
  static ListQuestionsRepositoryImpl? _instanceGameRepositoryImpl;

  // save the instance of the class
  static ParamsGameEntity? _paramsGameEntity;
  static ListQuestionsModel? _listQuestionsModel;

  ListQuestionsRepositoryImpl._();

  static ListQuestionsRepositoryImpl getInstance() {
    _listQuestionApi ??= ListQuestionsApi.getInstance();
    _listQuestionFirebase ??= ListQuestionsFirebase.getInstance();
    _paramsGameEntity ??= ParamsGameEntity(
        difficulty_question: DIFFICULTY_QUESTION.any,
        type_question: TYPE_QUESTION.any);
    _listQuestionsModel ??= null;
    _instanceGameRepositoryImpl ??= ListQuestionsRepositoryImpl._();
    return _instanceGameRepositoryImpl!;
  }

  Future<ApiResponse<ListQuestionsModel>> getQuestions() async {
    try {
      final resultFirebase = await _listQuestionFirebase!.getQuestionsOfToDay();
      if (resultFirebase != null) {
        return SuccessResponse(202.toString(), resultFirebase);
      } else {
        final listQuestionsModel =
            await _listQuestionApi?.getQuestions(_paramsGameEntity!.getPath());
        if (listQuestionsModel != null) {
          //await _listQuestionFirebase!.delete();
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

  Future<ApiResponse<ListQuestionsModel>> getQuestionsByDifficulty() async {
    try {
      final listQuestionsModel =
          await _listQuestionApi?.getQuestions(_paramsGameEntity!.getPath());
      if (listQuestionsModel != null) {
        return SuccessResponse(200.toString(), listQuestionsModel);
      } else {
        return FailResponse(404.toString(),
            failure: "ListQuestionsModel from API null");
      }
    } catch (e) {
      return FailResponse(e.toString(), failure: e.toString());
    }
  }

  void setDifficultyQuestion(DIFFICULTY_QUESTION difficulty_question) {
    _paramsGameEntity!.setDifficultyQuestion(difficulty_question);
  }

  void setTypeQuestion(TYPE_QUESTION type_question) {
    _paramsGameEntity!.setTypeQuestion(type_question);
  }
}
