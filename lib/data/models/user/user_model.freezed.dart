// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get numberGoodAnswer => throw _privateConstructorUsedError;
  int? get numberDayLogged => throw _privateConstructorUsedError;
  String? get dateOfLastGame => throw _privateConstructorUsedError;
  String? get pathPhoto => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String? email,
      String? name,
      int? numberGoodAnswer,
      int? numberDayLogged,
      String? dateOfLastGame,
      String? pathPhoto,
      int score});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? name = freezed,
    Object? numberGoodAnswer = freezed,
    Object? numberDayLogged = freezed,
    Object? dateOfLastGame = freezed,
    Object? pathPhoto = freezed,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      numberGoodAnswer: freezed == numberGoodAnswer
          ? _value.numberGoodAnswer
          : numberGoodAnswer // ignore: cast_nullable_to_non_nullable
              as int?,
      numberDayLogged: freezed == numberDayLogged
          ? _value.numberDayLogged
          : numberDayLogged // ignore: cast_nullable_to_non_nullable
              as int?,
      dateOfLastGame: freezed == dateOfLastGame
          ? _value.dateOfLastGame
          : dateOfLastGame // ignore: cast_nullable_to_non_nullable
              as String?,
      pathPhoto: freezed == pathPhoto
          ? _value.pathPhoto
          : pathPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? email,
      String? name,
      int? numberGoodAnswer,
      int? numberDayLogged,
      String? dateOfLastGame,
      String? pathPhoto,
      int score});
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? name = freezed,
    Object? numberGoodAnswer = freezed,
    Object? numberDayLogged = freezed,
    Object? dateOfLastGame = freezed,
    Object? pathPhoto = freezed,
    Object? score = null,
  }) {
    return _then(_$_UserModel(
      freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == numberGoodAnswer
          ? _value.numberGoodAnswer
          : numberGoodAnswer // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == numberDayLogged
          ? _value.numberDayLogged
          : numberDayLogged // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == dateOfLastGame
          ? _value.dateOfLastGame
          : dateOfLastGame // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == pathPhoto
          ? _value.pathPhoto
          : pathPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel(this.email, this.name, this.numberGoodAnswer,
      this.numberDayLogged, this.dateOfLastGame, this.pathPhoto,
      {required this.score});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  final String? email;
  @override
  final String? name;
  @override
  final int? numberGoodAnswer;
  @override
  final int? numberDayLogged;
  @override
  final String? dateOfLastGame;
  @override
  final String? pathPhoto;
  @override
  final int score;

  @override
  String toString() {
    return 'UserModel(email: $email, name: $name, numberGoodAnswer: $numberGoodAnswer, numberDayLogged: $numberDayLogged, dateOfLastGame: $dateOfLastGame, pathPhoto: $pathPhoto, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.numberGoodAnswer, numberGoodAnswer) ||
                other.numberGoodAnswer == numberGoodAnswer) &&
            (identical(other.numberDayLogged, numberDayLogged) ||
                other.numberDayLogged == numberDayLogged) &&
            (identical(other.dateOfLastGame, dateOfLastGame) ||
                other.dateOfLastGame == dateOfLastGame) &&
            (identical(other.pathPhoto, pathPhoto) ||
                other.pathPhoto == pathPhoto) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, name, numberGoodAnswer,
      numberDayLogged, dateOfLastGame, pathPhoto, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      final String? email,
      final String? name,
      final int? numberGoodAnswer,
      final int? numberDayLogged,
      final String? dateOfLastGame,
      final String? pathPhoto,
      {required final int score}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  String? get email;
  @override
  String? get name;
  @override
  int? get numberGoodAnswer;
  @override
  int? get numberDayLogged;
  @override
  String? get dateOfLastGame;
  @override
  String? get pathPhoto;
  @override
  int get score;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
