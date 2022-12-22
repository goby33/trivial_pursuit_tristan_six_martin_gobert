// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'list_users_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListUsersModel _$$_ListUsersModelFromJson(Map<String, dynamic> json) =>
    _$_ListUsersModel(
      list_users: (json['list_users'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListUsersModelToJson(_$_ListUsersModel instance) =>
    <String, dynamic>{
      'list_users': instance.list_users,
    };
