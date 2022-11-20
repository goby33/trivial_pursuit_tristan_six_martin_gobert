import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trivial_pursuit_app/presentation/states/cubits/jeux_cubit.dart';

part 'jeux_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class JeuxState with _$JeuxState {
  const JeuxState._();

  factory JeuxState.loading() = JeuxStateLoading;
  factory JeuxState.loaded({
    required JeuxPlayers partie,
  }) = JeuxStateLoaded;
  factory JeuxState.failed({
    String? failed,
  }) = JeuxStateFailed;

  JeuxPlayers? get partie => maybeMap(
        loading: (value) => value.partie,
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
