import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/welcome_state.dart';

class WelcomeCubit extends Cubit<WelcomeState> {
  AuthRepositoryImpl authRepository;

  WelcomeCubit({required this.authRepository}) : super(WelcomeStateInitial());

  Future<void> uploadPicture({required String path}) async {
    emit(WelcomeStateLoading());
    File image = File(path);
    final response = await authRepository.uploadPicture(file: image);
    if (response is SuccessResponse) {
      emit(WelcomeStateUploaded());
    } else {
      emit(
        WelcomeStateFailed(
          dateTime: DateTime.now(),
          message: response.toString(),
        ),
      );
    }
  }

  void checkImage({
    required XFile image,
  }) {
    if (image.path.isNotEmpty) {
      emit(
        WelcomeStatePictureChoosen(path: image.path),
      );
    }
  }
}
