// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/user/user_model.dart';

part 'list_users_model.freezed.dart';
part 'list_users_model.g.dart';

/// {@template list_users_model}
/// ListUsersModel description
/// {@endtemplate}
@freezed
class ListUsersModel with _$ListUsersModel {
  /// {@macro list_users_model}
  const factory ListUsersModel({
    required List<UserModel> list_users,
  }) = _ListUsersModel;

  /// Creates a ListUsersModel from Json map
  factory ListUsersModel.fromJson(Map<String, dynamic> data) =>
      _$ListUsersModelFromJson(data);
}
