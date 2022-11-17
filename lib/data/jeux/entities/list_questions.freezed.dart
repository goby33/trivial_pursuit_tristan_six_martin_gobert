// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_questions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListQuestions _$ListQuestionsFromJson(Map<String, dynamic> json) {
  return _ListQuestions.fromJson(json);
}

/// @nodoc
mixin _$ListQuestions {
  int get response_code => throw _privateConstructorUsedError;
  List<Question> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListQuestionsCopyWith<ListQuestions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListQuestionsCopyWith<$Res> {
  factory $ListQuestionsCopyWith(
          ListQuestions value, $Res Function(ListQuestions) then) =
      _$ListQuestionsCopyWithImpl<$Res, ListQuestions>;
  @useResult
  $Res call({int response_code, List<Question> results});
}

/// @nodoc
class _$ListQuestionsCopyWithImpl<$Res, $Val extends ListQuestions>
    implements $ListQuestionsCopyWith<$Res> {
  _$ListQuestionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response_code = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      response_code: null == response_code
          ? _value.response_code
          : response_code // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListQuestionsCopyWith<$Res>
    implements $ListQuestionsCopyWith<$Res> {
  factory _$$_ListQuestionsCopyWith(
          _$_ListQuestions value, $Res Function(_$_ListQuestions) then) =
      __$$_ListQuestionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int response_code, List<Question> results});
}

/// @nodoc
class __$$_ListQuestionsCopyWithImpl<$Res>
    extends _$ListQuestionsCopyWithImpl<$Res, _$_ListQuestions>
    implements _$$_ListQuestionsCopyWith<$Res> {
  __$$_ListQuestionsCopyWithImpl(
      _$_ListQuestions _value, $Res Function(_$_ListQuestions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response_code = null,
    Object? results = null,
  }) {
    return _then(_$_ListQuestions(
      response_code: null == response_code
          ? _value.response_code
          : response_code // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListQuestions implements _ListQuestions {
  const _$_ListQuestions(
      {required this.response_code, required final List<Question> results})
      : _results = results;

  factory _$_ListQuestions.fromJson(Map<String, dynamic> json) =>
      _$$_ListQuestionsFromJson(json);

  @override
  final int response_code;
  final List<Question> _results;
  @override
  List<Question> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ListQuestions(response_code: $response_code, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListQuestions &&
            (identical(other.response_code, response_code) ||
                other.response_code == response_code) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, response_code,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListQuestionsCopyWith<_$_ListQuestions> get copyWith =>
      __$$_ListQuestionsCopyWithImpl<_$_ListQuestions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListQuestionsToJson(
      this,
    );
  }
}

abstract class _ListQuestions implements ListQuestions {
  const factory _ListQuestions(
      {required final int response_code,
      required final List<Question> results}) = _$_ListQuestions;

  factory _ListQuestions.fromJson(Map<String, dynamic> json) =
      _$_ListQuestions.fromJson;

  @override
  int get response_code;
  @override
  List<Question> get results;
  @override
  @JsonKey(ignore: true)
  _$$_ListQuestionsCopyWith<_$_ListQuestions> get copyWith =>
      throw _privateConstructorUsedError;
}
