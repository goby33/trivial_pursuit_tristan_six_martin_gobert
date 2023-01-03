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
  String get email => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get numberGoodAnswer => throw _privateConstructorUsedError;
  int get numberDayLogged => throw _privateConstructorUsedError;
  String get dateOfLastGame => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  String get pathPhoto => throw _privateConstructorUsedError;

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
      {String email,
      String uid,
      String name,
      int numberGoodAnswer,
      int numberDayLogged,
      String dateOfLastGame,
      int score,
      String pathPhoto});
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
    Object? email = null,
    Object? uid = null,
    Object? name = null,
    Object? numberGoodAnswer = null,
    Object? numberDayLogged = null,
    Object? dateOfLastGame = null,
    Object? score = null,
    Object? pathPhoto = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      numberGoodAnswer: null == numberGoodAnswer
          ? _value.numberGoodAnswer
          : numberGoodAnswer // ignore: cast_nullable_to_non_nullable
              as int,
      numberDayLogged: null == numberDayLogged
          ? _value.numberDayLogged
          : numberDayLogged // ignore: cast_nullable_to_non_nullable
              as int,
      dateOfLastGame: null == dateOfLastGame
          ? _value.dateOfLastGame
          : dateOfLastGame // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      pathPhoto: null == pathPhoto
          ? _value.pathPhoto
          : pathPhoto // ignore: cast_nullable_to_non_nullable
              as String,
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
      {String email,
      String uid,
      String name,
      int numberGoodAnswer,
      int numberDayLogged,
      String dateOfLastGame,
      int score,
      String pathPhoto});
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
    Object? email = null,
    Object? uid = null,
    Object? name = null,
    Object? numberGoodAnswer = null,
    Object? numberDayLogged = null,
    Object? dateOfLastGame = null,
    Object? score = null,
    Object? pathPhoto = null,
  }) {
    return _then(_$_UserModel(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      numberGoodAnswer: null == numberGoodAnswer
          ? _value.numberGoodAnswer
          : numberGoodAnswer // ignore: cast_nullable_to_non_nullable
              as int,
      numberDayLogged: null == numberDayLogged
          ? _value.numberDayLogged
          : numberDayLogged // ignore: cast_nullable_to_non_nullable
              as int,
      dateOfLastGame: null == dateOfLastGame
          ? _value.dateOfLastGame
          : dateOfLastGame // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      pathPhoto: null == pathPhoto
          ? _value.pathPhoto
          : pathPhoto // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {required this.email,
      required this.uid,
      required this.name,
      required this.numberGoodAnswer,
      required this.numberDayLogged,
      required this.dateOfLastGame,
      required this.score,
      required this.pathPhoto});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  final String email;
  @override
  final String uid;
  @override
  final String name;
  @override
  final int numberGoodAnswer;
  @override
  final int numberDayLogged;
  @override
  final String dateOfLastGame;
  @override
  final int score;
  @override
  final String pathPhoto;

  @override
  String toString() {
    return 'UserModel(email: $email, uid: $uid, name: $name, numberGoodAnswer: $numberGoodAnswer, numberDayLogged: $numberDayLogged, dateOfLastGame: $dateOfLastGame, score: $score, pathPhoto: $pathPhoto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.numberGoodAnswer, numberGoodAnswer) ||
                other.numberGoodAnswer == numberGoodAnswer) &&
            (identical(other.numberDayLogged, numberDayLogged) ||
                other.numberDayLogged == numberDayLogged) &&
            (identical(other.dateOfLastGame, dateOfLastGame) ||
                other.dateOfLastGame == dateOfLastGame) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.pathPhoto, pathPhoto) ||
                other.pathPhoto == pathPhoto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, uid, name,
      numberGoodAnswer, numberDayLogged, dateOfLastGame, score, pathPhoto);

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
      {required final String email,
      required final String uid,
      required final String name,
      required final int numberGoodAnswer,
      required final int numberDayLogged,
      required final String dateOfLastGame,
      required final int score,
      required final String pathPhoto}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  String get email;
  @override
  String get uid;
  @override
  String get name;
  @override
  int get numberGoodAnswer;
  @override
  int get numberDayLogged;
  @override
  String get dateOfLastGame;
  @override
  int get score;
  @override
  String get pathPhoto;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
