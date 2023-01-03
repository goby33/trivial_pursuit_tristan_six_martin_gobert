import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/storage_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/welcome_state.dart';

class WelcomeCubit extends Cubit<WelcomeState> {
  AuthRepositoryImpl authRepository;
  StorageRepositoryImpl storageRepository;

  WelcomeCubit({
    required this.authRepository,
    required this.storageRepository,
  }) : super(WelcomeStateInitial());

  Future<void> uploadPicture({required String path}) async {
    emit(WelcomeStateLoading());
    File image = File(path);
    final response_user = await authRepository.getCurrentUser();
    if (response_user is SuccessResponse) {
      if (response_user.data != null) {
        final response_upload = await storageRepository.uploadPicture(file: image, uid: '');
        if (response_upload is SuccessResponse) {
          emit(WelcomeStateUploaded());
        } else {
          emit(
            WelcomeStateFailed(
              dateTime: DateTime.now(),
              message: response_upload.toString(),
            ),
          );
        }
      } else {
        emit(
          WelcomeStateFailed(
            dateTime: DateTime.now(),
            message: response_user.toString(),
          ),
        );
      }
    } else {
      emit(
        WelcomeStateFailed(
          dateTime: DateTime.now(),
          message: response_user.toString(),
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
