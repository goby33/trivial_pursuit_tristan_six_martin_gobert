import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class SignUpState with _$SignUpState {
  const SignUpState._();

  factory SignUpState.noSignIn() = SignUpStateNoSignUp;

  //loading
  factory SignUpState.loading() = SignUpStateLoading;

  factory SignUpState.failed({
    required DateTime dateTime,
    required String message,
  }) = SignUpStateFailed;

  factory SignUpState.signUp() = SignUpStateSignUp;
}
