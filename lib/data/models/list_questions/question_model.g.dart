// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionModel _$$_QuestionModelFromJson(Map<String, dynamic> json) =>
    _$_QuestionModel(
      category: json['category'] as String,
      type: json['type'] as String,
      difficulty: json['difficulty'] as String,
      question: json['question'] as String,
      correct_answer: json['correct_answer'] as String,
      incorrect_answers: (json['incorrect_answers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_QuestionModelToJson(_$_QuestionModel instance) =>
    <String, dynamic>{
      'category': instance.category,
      'type': instance.type,
      'difficulty': instance.difficulty,
      'question': instance.question,
      'correct_answer': instance.correct_answer,
      'incorrect_answers': instance.incorrect_answers,
    };
