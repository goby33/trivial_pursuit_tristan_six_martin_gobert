import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trivial_pursuit_app/data/jeux/entities/question.dart';

part 'list_questions.freezed.dart';
part 'list_questions.g.dart';

/// {@template list_questions}
/// ListQuestions description
/// {@endtemplate}
@freezed
class ListQuestions with _$ListQuestions {
  /// {@macro list_questions}
  const factory ListQuestions({
    required int response_code,
    required List<Question> results,
  }) = _ListQuestions;

  /// Creates a ListQuestions from Json map
  factory ListQuestions.fromJson(Map<String, dynamic> data) =>
      _$ListQuestionsFromJson(data);
}
