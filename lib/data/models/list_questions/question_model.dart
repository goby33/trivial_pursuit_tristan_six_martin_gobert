// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_model.freezed.dart';
part 'question_model.g.dart';

/// {@template question_model}
/// QuestionModel description
/// {@endtemplate}
@freezed
class QuestionModel with _$QuestionModel {
  /// {@macro question_model}
  const factory QuestionModel({
    required String category,
    required String type,
    required String difficulty,
    required String question,
    required String correct_answer,
    required List<String> incorrect_answers,
  }) = _QuestionModel;

  /// Creates a QuestionModel from Json map
  factory QuestionModel.fromJson(Map<String, dynamic> data) =>
      _$QuestionModelFromJson(data);
}
