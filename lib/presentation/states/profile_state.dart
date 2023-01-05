import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/user/user_model.dart';

part 'profile_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ProfileState with _$ProfileState {
  const ProfileState._();

  factory ProfileState.loading() = ProfileStateLoading;

  factory ProfileState.noSignIn() = ProfileStateNoSignIn;

  factory ProfileState.failed(
      {required DateTime dateTime,
      required String message}) = ProfileStateFailed;

  factory ProfileState.signIn({required UserModel user, required String uid}) = ProfileStateSignIn;

  UserModel? get user => maybeMap(
        signIn: (value) => value.user,
        orElse: () => null,
      );

  String get uid => maybeMap(
        signIn: (value) => value.uid,
        orElse: () => "undefined",
      );
}
