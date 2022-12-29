// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      email: json['email'] as String,
      uid: json['uid'] as String,
      name: json['name'] as String,
      numberGoodAnswer: json['numberGoodAnswer'] as int,
      numberDayLogged: json['numberDayLogged'] as int,
      dateOfLastGame: json['dateOfLastGame'] as String,
      score: json['score'] as int,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'uid': instance.uid,
      'name': instance.name,
      'numberGoodAnswer': instance.numberGoodAnswer,
      'numberDayLogged': instance.numberDayLogged,
      'dateOfLastGame': instance.dateOfLastGame,
      'score': instance.score,
    };
