import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

/// {@template user}
/// User description
/// {@endtemplate}
@freezed
class User with _$User {
  /// {@macro user}
  const factory User({
    required int id,
    required String name,
    required String surname,
    required String email,
    required String pseudo,
    required String password,
    required int score,
  }) = _User;

  /// Creates a User from Json map
  factory User.fromJson(Map<String, dynamic> data) => _$UserFromJson(data);
}
