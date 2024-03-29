import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/user/user_model.dart';

part 'ranking_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class RankingState with _$RankingState {
  const RankingState._();

  factory RankingState.loading() = RankingStateLoading;

  factory RankingState.failed(
      {required DateTime dateTime,
      required String message}) = RankingStateFailed;

  factory RankingState.ready({required List<UserModel>? listUsersModel}) =
      RankingStateReady;

  List<UserModel>? get listUsersModel => maybeMap(
        ready: (value) => value.listUsersModel,
        orElse: () => null,
      );
}
