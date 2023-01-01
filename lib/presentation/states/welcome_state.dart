import 'package:freezed_annotation/freezed_annotation.dart';

part 'welcome_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class WelcomeState with _$WelcomeState {
  const WelcomeState._();

  //initial state
  factory WelcomeState.initial() = WelcomeStateInitial;

  // picture chosen
  factory WelcomeState.pictureChosen({
    required String path,
  }) = WelcomeStatePictureChoosen;

  factory WelcomeState.loading() = WelcomeStateLoading;

  factory WelcomeState.uploaded() = WelcomeStateUploaded;

  factory WelcomeState.failed(
      {required DateTime dateTime,
        required String message}) = WelcomeStateFailed;

  //get path
  String? get path => when(
        initial: () => null,
        pictureChosen: (path) => path,
        loading: () => null,
        uploaded: () => null,
        failed: (dateTime, message) => null,
      );
}