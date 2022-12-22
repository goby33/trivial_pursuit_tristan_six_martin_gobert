// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/list_questions/question_model.dart';

part 'list_questions_model.freezed.dart';
part 'list_questions_model.g.dart';

/// {@template list_questions_model}
/// ListQuestionsModel description
/// {@endtemplate}
@freezed
class ListQuestionsModel with _$ListQuestionsModel {
  /// {@macro list_questions_model}
  const factory ListQuestionsModel({
    required int response_code,
    required List<QuestionModel> results,
  }) = _ListQuestionsModel;

  /// Creates a ListQuestionsModel from Json map
  factory ListQuestionsModel.fromJson(Map<String, dynamic> data) =>
      _$ListQuestionsModelFromJson(data);
}