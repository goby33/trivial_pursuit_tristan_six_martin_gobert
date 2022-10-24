import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trivial_pursuit_app/data/jeux/entities/question.dart';

part 'questions.freezed.dart';
part 'questions.g.dart';

/// {@template questions}
/// Questions description
/// {@endtemplate}
@freezed
class Questions with _$Questions {
  /// {@macro questions}
  const factory Questions({
    required int response_code,
    required List<Question> results,
  }) = _Questions;

  /// Creates a Questions from Json map
  factory Questions.fromJson(Map<String, dynamic> data) =>
      _$QuestionsFromJson(data);
}
