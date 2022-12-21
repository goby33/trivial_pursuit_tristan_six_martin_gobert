// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_questions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListQuestionsModel _$$_ListQuestionsModelFromJson(
        Map<String, dynamic> json) =>
    _$_ListQuestionsModel(
      response_code: json['response_code'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => QuestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListQuestionsModelToJson(
        _$_ListQuestionsModel instance) =>
    <String, dynamic>{
      'response_code': instance.response_code,
      'results': instance.results,
    };
