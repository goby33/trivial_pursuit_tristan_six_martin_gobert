// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';

@freezed
class Question with _$Question {
  const factory Question({
    required String category,
    required String type,
    required String difficulty,
    required String question,
    required String correct_answer,
    required List<String> incorrect_answers,
  }) = _Question;
}
