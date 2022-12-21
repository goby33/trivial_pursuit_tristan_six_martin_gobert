// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_questions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListQuestions {
  List<Question> get listQuestions => throw _privateConstructorUsedError;

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
  $Res call({List<Question> listQuestions});
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
    Object? listQuestions = null,
  }) {
    return _then(_value.copyWith(
      listQuestions: null == listQuestions
          ? _value.listQuestions
          : listQuestions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListQuestionCopyWith<$Res>
    implements $ListQuestionsCopyWith<$Res> {
  factory _$$_ListQuestionCopyWith(
          _$_ListQuestion value, $Res Function(_$_ListQuestion) then) =
      __$$_ListQuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Question> listQuestions});
}

/// @nodoc
class __$$_ListQuestionCopyWithImpl<$Res>
    extends _$ListQuestionsCopyWithImpl<$Res, _$_ListQuestion>
    implements _$$_ListQuestionCopyWith<$Res> {
  __$$_ListQuestionCopyWithImpl(
      _$_ListQuestion _value, $Res Function(_$_ListQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listQuestions = null,
  }) {
    return _then(_$_ListQuestion(
      listQuestions: null == listQuestions
          ? _value._listQuestions
          : listQuestions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc

class _$_ListQuestion implements _ListQuestion {
  const _$_ListQuestion({required final List<Question> listQuestions})
      : _listQuestions = listQuestions;

  final List<Question> _listQuestions;
  @override
  List<Question> get listQuestions {
    if (_listQuestions is EqualUnmodifiableListView) return _listQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listQuestions);
  }

  @override
  String toString() {
    return 'ListQuestions(listQuestions: $listQuestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListQuestion &&
            const DeepCollectionEquality()
                .equals(other._listQuestions, _listQuestions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listQuestions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListQuestionCopyWith<_$_ListQuestion> get copyWith =>
      __$$_ListQuestionCopyWithImpl<_$_ListQuestion>(this, _$identity);
}

abstract class _ListQuestion implements ListQuestions {
  const factory _ListQuestion({required final List<Question> listQuestions}) =
      _$_ListQuestion;

  @override
  List<Question> get listQuestions;
  @override
  @JsonKey(ignore: true)
  _$$_ListQuestionCopyWith<_$_ListQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}
