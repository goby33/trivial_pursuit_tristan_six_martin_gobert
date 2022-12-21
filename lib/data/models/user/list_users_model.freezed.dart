// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_users_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListUsersModel _$ListUsersModelFromJson(Map<String, dynamic> json) {
  return _ListUsersModel.fromJson(json);
}

/// @nodoc
mixin _$ListUsersModel {
  List<UserModel> get list_users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListUsersModelCopyWith<ListUsersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListUsersModelCopyWith<$Res> {
  factory $ListUsersModelCopyWith(
          ListUsersModel value, $Res Function(ListUsersModel) then) =
      _$ListUsersModelCopyWithImpl<$Res, ListUsersModel>;
  @useResult
  $Res call({List<UserModel> list_users});
}

/// @nodoc
class _$ListUsersModelCopyWithImpl<$Res, $Val extends ListUsersModel>
    implements $ListUsersModelCopyWith<$Res> {
  _$ListUsersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list_users = null,
  }) {
    return _then(_value.copyWith(
      list_users: null == list_users
          ? _value.list_users
          : list_users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListUsersModelCopyWith<$Res>
    implements $ListUsersModelCopyWith<$Res> {
  factory _$$_ListUsersModelCopyWith(
          _$_ListUsersModel value, $Res Function(_$_ListUsersModel) then) =
      __$$_ListUsersModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserModel> list_users});
}

/// @nodoc
class __$$_ListUsersModelCopyWithImpl<$Res>
    extends _$ListUsersModelCopyWithImpl<$Res, _$_ListUsersModel>
    implements _$$_ListUsersModelCopyWith<$Res> {
  __$$_ListUsersModelCopyWithImpl(
      _$_ListUsersModel _value, $Res Function(_$_ListUsersModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list_users = null,
  }) {
    return _then(_$_ListUsersModel(
      list_users: null == list_users
          ? _value._list_users
          : list_users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListUsersModel implements _ListUsersModel {
  const _$_ListUsersModel({required final List<UserModel> list_users})
      : _list_users = list_users;

  factory _$_ListUsersModel.fromJson(Map<String, dynamic> json) =>
      _$$_ListUsersModelFromJson(json);

  final List<UserModel> _list_users;
  @override
  List<UserModel> get list_users {
    if (_list_users is EqualUnmodifiableListView) return _list_users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list_users);
  }

  @override
  String toString() {
    return 'ListUsersModel(list_users: $list_users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListUsersModel &&
            const DeepCollectionEquality()
                .equals(other._list_users, _list_users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_list_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListUsersModelCopyWith<_$_ListUsersModel> get copyWith =>
      __$$_ListUsersModelCopyWithImpl<_$_ListUsersModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListUsersModelToJson(
      this,
    );
  }
}

abstract class _ListUsersModel implements ListUsersModel {
  const factory _ListUsersModel({required final List<UserModel> list_users}) =
      _$_ListUsersModel;

  factory _ListUsersModel.fromJson(Map<String, dynamic> json) =
      _$_ListUsersModel.fromJson;

  @override
  List<UserModel> get list_users;
  @override
  @JsonKey(ignore: true)
  _$$_ListUsersModelCopyWith<_$_ListUsersModel> get copyWith =>
      throw _privateConstructorUsedError;
}
