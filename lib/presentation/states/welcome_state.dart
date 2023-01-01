import 'package:freezed_annotation/freezed_annotation.dart';

part 'welcome_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class WelcomeState with _$WelcomeState {
  const WelcomeState._();

  factory WelcomeState.loading() = WelcomeStateLoading;

  factory WelcomeState.uploaded() = WelcomeStateUploaded;

  factory WelcomeState.failed(
      {required DateTime dateTime,
        required String message}) = WelcomeStateFailed;
}