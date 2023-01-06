// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_questions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListQuestionsModel _$$_ListQuestionsModelFromJson(
        Map<String, dynamic> json) =>
    _$_ListQuestionsModel(
      results: (json['results'] as List<dynamic>)
          .map((e) => QuestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListQuestionsModelToJson(
        _$_ListQuestionsModel instance) =>
    <String, dynamic>{
      'results': instance.results.map((question) => question.toJson()).toList(),
    };
