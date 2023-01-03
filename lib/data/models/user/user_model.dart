import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

/// {@template user_model}
/// UserModel description
/// {@endtemplate}
@freezed
class UserModel with _$UserModel {
  /// {@macro user_model}
  const factory UserModel({ 
    required String email,
    required String uid,
    required String name,
    required int numberGoodAnswer,
    required int numberDayLogged,
    required String dateOfLastGame,
    required int score,
    required String pathPhoto,
  }) = _UserModel;
  
    /// Creates a UserModel from Json map
  factory UserModel.fromJson(Map<String, dynamic> data) => _$UserModelFromJson(data);
}
