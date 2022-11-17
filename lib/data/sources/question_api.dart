import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:trivial_pursuit_app/data/jeux/entities/list_questions.dart';

class QuestionApi {
  static QuestionApi? _instanceQuestionApi;
  QuestionApi._();

  static QuestionApi getInstance() {
    _instanceQuestionApi ??= QuestionApi._();
    return _instanceQuestionApi!;
  }

  static const URL = "https://opentdb.com/api.php?amount=10";

  Future<ListQuestions?> getQuestions() async {
    var responseApi = await Dio().get(URL);
    if (responseApi.statusCode == 200) {
      final questions = ListQuestions.fromJson(responseApi.data);
      return questions;
    }
    return null;
  }
}
