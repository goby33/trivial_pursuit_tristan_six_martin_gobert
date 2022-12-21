import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/domain/entities/question.dart';

part 'list_questions.freezed.dart';

@freezed
class ListQuestions with _$ListQuestions {
  const factory ListQuestions({
    required List<Question> listQuestions,
  }) = _ListQuestion;
}
