// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_categories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListCategoriesModel _$ListCategoriesModelFromJson(Map<String, dynamic> json) {
  return _ListCategoriesModel.fromJson(json);
}

/// @nodoc
mixin _$ListCategoriesModel {
  List<CategoryModel> get trivia_categories =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListCategoriesModelCopyWith<ListCategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListCategoriesModelCopyWith<$Res> {
  factory $ListCategoriesModelCopyWith(
          ListCategoriesModel value, $Res Function(ListCategoriesModel) then) =
      _$ListCategoriesModelCopyWithImpl<$Res, ListCategoriesModel>;
  @useResult
  $Res call({List<CategoryModel> trivia_categories});
}

/// @nodoc
class _$ListCategoriesModelCopyWithImpl<$Res, $Val extends ListCategoriesModel>
    implements $ListCategoriesModelCopyWith<$Res> {
  _$ListCategoriesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trivia_categories = null,
  }) {
    return _then(_value.copyWith(
      trivia_categories: null == trivia_categories
          ? _value.trivia_categories
          : trivia_categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListCategoriesModelCopyWith<$Res>
    implements $ListCategoriesModelCopyWith<$Res> {
  factory _$$_ListCategoriesModelCopyWith(_$_ListCategoriesModel value,
          $Res Function(_$_ListCategoriesModel) then) =
      __$$_ListCategoriesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CategoryModel> trivia_categories});
}

/// @nodoc
class __$$_ListCategoriesModelCopyWithImpl<$Res>
    extends _$ListCategoriesModelCopyWithImpl<$Res, _$_ListCategoriesModel>
    implements _$$_ListCategoriesModelCopyWith<$Res> {
  __$$_ListCategoriesModelCopyWithImpl(_$_ListCategoriesModel _value,
      $Res Function(_$_ListCategoriesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trivia_categories = null,
  }) {
    return _then(_$_ListCategoriesModel(
      trivia_categories: null == trivia_categories
          ? _value._trivia_categories
          : trivia_categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListCategoriesModel implements _ListCategoriesModel {
  const _$_ListCategoriesModel(
      {required final List<CategoryModel> trivia_categories})
      : _trivia_categories = trivia_categories;

  factory _$_ListCategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$$_ListCategoriesModelFromJson(json);

  final List<CategoryModel> _trivia_categories;
  @override
  List<CategoryModel> get trivia_categories {
    if (_trivia_categories is EqualUnmodifiableListView)
      return _trivia_categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trivia_categories);
  }

  @override
  String toString() {
    return 'ListCategoriesModel(trivia_categories: $trivia_categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListCategoriesModel &&
            const DeepCollectionEquality()
                .equals(other._trivia_categories, _trivia_categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_trivia_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListCategoriesModelCopyWith<_$_ListCategoriesModel> get copyWith =>
      __$$_ListCategoriesModelCopyWithImpl<_$_ListCategoriesModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListCategoriesModelToJson(
      this,
    );
  }
}

abstract class _ListCategoriesModel implements ListCategoriesModel {
  const factory _ListCategoriesModel(
          {required final List<CategoryModel> trivia_categories}) =
      _$_ListCategoriesModel;

  factory _ListCategoriesModel.fromJson(Map<String, dynamic> json) =
      _$_ListCategoriesModel.fromJson;

  @override
  List<CategoryModel> get trivia_categories;
  @override
  @JsonKey(ignore: true)
  _$$_ListCategoriesModelCopyWith<_$_ListCategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
