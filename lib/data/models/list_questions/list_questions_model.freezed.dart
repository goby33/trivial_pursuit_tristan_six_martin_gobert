// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_questions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListQuestionsModel _$ListQuestionsModelFromJson(Map<String, dynamic> json) {
  return _ListQuestionsModel.fromJson(json);
}

/// @nodoc
mixin _$ListQuestionsModel {
  List<QuestionModel> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListQuestionsModelCopyWith<ListQuestionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListQuestionsModelCopyWith<$Res> {
  factory $ListQuestionsModelCopyWith(
          ListQuestionsModel value, $Res Function(ListQuestionsModel) then) =
      _$ListQuestionsModelCopyWithImpl<$Res, ListQuestionsModel>;
  @useResult
  $Res call({List<QuestionModel> results});
}

/// @nodoc
class _$ListQuestionsModelCopyWithImpl<$Res, $Val extends ListQuestionsModel>
    implements $ListQuestionsModelCopyWith<$Res> {
  _$ListQuestionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListQuestionsModelCopyWith<$Res>
    implements $ListQuestionsModelCopyWith<$Res> {
  factory _$$_ListQuestionsModelCopyWith(_$_ListQuestionsModel value,
          $Res Function(_$_ListQuestionsModel) then) =
      __$$_ListQuestionsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<QuestionModel> results});
}

/// @nodoc
class __$$_ListQuestionsModelCopyWithImpl<$Res>
    extends _$ListQuestionsModelCopyWithImpl<$Res, _$_ListQuestionsModel>
    implements _$$_ListQuestionsModelCopyWith<$Res> {
  __$$_ListQuestionsModelCopyWithImpl(
      _$_ListQuestionsModel _value, $Res Function(_$_ListQuestionsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$_ListQuestionsModel(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListQuestionsModel implements _ListQuestionsModel {
  const _$_ListQuestionsModel({required final List<QuestionModel> results})
      : _results = results;

  factory _$_ListQuestionsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ListQuestionsModelFromJson(json);

  final List<QuestionModel> _results;
  @override
  List<QuestionModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ListQuestionsModel(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListQuestionsModel &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListQuestionsModelCopyWith<_$_ListQuestionsModel> get copyWith =>
      __$$_ListQuestionsModelCopyWithImpl<_$_ListQuestionsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListQuestionsModelToJson(
      this,
    );
  }
}

abstract class _ListQuestionsModel implements ListQuestionsModel {
  const factory _ListQuestionsModel(
      {required final List<QuestionModel> results}) = _$_ListQuestionsModel;

  factory _ListQuestionsModel.fromJson(Map<String, dynamic> json) =
      _$_ListQuestionsModel.fromJson;

  @override
  List<QuestionModel> get results;
  @override
  @JsonKey(ignore: true)
  _$$_ListQuestionsModelCopyWith<_$_ListQuestionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
