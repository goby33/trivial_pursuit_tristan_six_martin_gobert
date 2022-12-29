import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ForgotPasswordState with _$ForgotPasswordState {
  const ForgotPasswordState._();

  factory ForgotPasswordState.loading() = ForgotPasswordStateLoading;

  factory ForgotPasswordState.success() = ForgotPasswordStateSuccess;

  factory ForgotPasswordState.error({
    required DateTime dateTime,
    required String message,
  }) = ForgotPasswordStateError;
}