// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Questions _$$_QuestionsFromJson(Map<String, dynamic> json) => _$_Questions(
      response_code: json['response_code'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QuestionsToJson(_$_Questions instance) =>
    <String, dynamic>{
      'response_code': instance.response_code,
      'results': instance.results,
    };
