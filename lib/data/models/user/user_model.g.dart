// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      json['email'] as String?,
      json['name'] as String?,
      json['numberGoodAnswer'] as int?,
      json['numberDayLogged'] as int?,
      json['dateOfLastGame'] as String?,
      json['pathPhoto'] as String?,
      score: json['score'] as int,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'numberGoodAnswer': instance.numberGoodAnswer,
      'numberDayLogged': instance.numberDayLogged,
      'dateOfLastGame': instance.dateOfLastGame,
      'pathPhoto': instance.pathPhoto,
      'score': instance.score,
    };
