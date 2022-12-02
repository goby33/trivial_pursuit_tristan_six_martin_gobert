import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trivial_pursuit_app/data/jeux/entities/list_questions.dart';
import 'package:trivial_pursuit_app/presentation/states/cubits/jeux_cubit.dart';

part 'jeux_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class JeuxState with _$JeuxState {
  const JeuxState._();
  factory JeuxState.initial() = JeuxStateInitial;

  factory JeuxState.loading() = JeuxStateLoading;


  factory JeuxState.loaded({
    required ListQuestions listQuestions,
  }) = JeuxStateLoaded;


  factory JeuxState.failed({
    String? failed,
  }) = JeuxStateFailed;

  ListQuestions? get partie => maybeMap(
        loaded: (value) => value.partie,
        orElse: () => null,
      );
}

//Loading/init
//loaded/ ready
// error (string)
// Answer selected
// good / wrong answer
// current question
// selection + validation
