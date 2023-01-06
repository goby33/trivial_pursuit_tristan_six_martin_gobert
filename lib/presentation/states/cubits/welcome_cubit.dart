import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/storage_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/user_model_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/welcome_state.dart';

class WelcomeCubit extends Cubit<WelcomeState> {
  AuthRepositoryImpl authRepository;
  StorageRepositoryImpl storageRepository;
  UserModelRepositoryImpl userModelRepositoryImpl;

  WelcomeCubit({
    required this.authRepository,
    required this.storageRepository,
    required this.userModelRepositoryImpl,
  }) : super(WelcomeStateInitial(
    path: '',
  ));

  Future<void> uploadPicture() async {
    String path = state.path!;
    emit(WelcomeStateLoading(path: path));
    File image = File(path);
    final user = await authRepository.user;
    if (user != null) {
      final response_upload =
          await storageRepository.uploadPicture(file: image, uid: user.uid);
      if (response_upload is SuccessResponse) {
        final response_user = await userModelRepositoryImpl.updatePathUserModel(
            uid: user.uid, path: response_upload.data!);
        if (response_user is SuccessResponse) {
          emit(WelcomeStateUploaded());
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
            message: response_upload.toString(),
          ),
        );
      }
    } else {
      emit(
        WelcomeStateFailed(
          dateTime: DateTime.now(),
          message: "User is null",
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

  void reset() {
    emit(WelcomeStateInitial(path: ''));
  }
}
