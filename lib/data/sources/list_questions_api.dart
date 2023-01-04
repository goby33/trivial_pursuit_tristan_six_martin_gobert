import 'package:dio/dio.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/constants.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/list_questions/list_questions_model.dart';

class ListQuestionsApi {
  static ListQuestionsApi? _instanceQuestionApi;
  ListQuestionsApi._();

  static ListQuestionsApi getInstance() {
    _instanceQuestionApi ??= ListQuestionsApi._();
    return _instanceQuestionApi!;
  }

  static const url = "https://opentdb.com/api.php?amount=$NB_QUESTIONS";


  Future<ListQuestionsModel?> getQuestions({required String params}) async {
    var responseApi = await Dio().get(url + params);
    if (responseApi.statusCode == 200) {
      final questions = ListQuestionsModel.fromJson(responseApi.data);
      return questions;
    }
    return null;
  }

}
