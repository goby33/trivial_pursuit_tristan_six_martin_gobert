import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/picker_photo_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/storage_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/user_model_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/picker_image_state.dart';

class PickerImageCubit extends Cubit<PickerImageState> {
  AuthRepositoryImpl authRepository;
  StorageRepositoryImpl storageRepository;
  UserModelRepositoryImpl userModelRepositoryImpl;
  PickerPhotoRepositoryImpl pickerPhotoRepositoryImpl;

  PickerImageCubit({
    required this.authRepository,
    required this.storageRepository,
    required this.userModelRepositoryImpl,
    required this.pickerPhotoRepositoryImpl,
  }) : super(PickerImageStateInitial(
    path: '',
  ));

  Future<void> pickImage({
  required ImageSource source,
}) async {
   final response_photo = await pickerPhotoRepositoryImpl.getImage(source: source);
   if (response_photo is SuccessResponse) {
     emit(PickerImageStateChoosen(path: response_photo.data!));
   } else {
     emit(PickerImageStateFailed(dateTime: DateTime.now(), message: "Error: format not supported"));
   }
  }

  Future<void> uploadPicture() async {
    String path = state.path;
    emit(PickerImageStateLoading(path: path));
    File image = File(path);
    final user = await authRepository.user;
    if (user != null) {
      final response_upload =
          await storageRepository.uploadPicture(file: image, uid: user.uid);
      if (response_upload is SuccessResponse) {
        final response_user = await userModelRepositoryImpl.updatePathUserModel(
            uid: user.uid, path: response_upload.data!);
        if (response_user is SuccessResponse) {
          emit(PickerImageStateUploaded());
        } else {
          emit(
            PickerImageStateFailed(
              dateTime: DateTime.now(),
              message: response_user.toString(),
            ),
          );
        }
      } else {
        emit(
          PickerImageStateFailed(
            dateTime: DateTime.now(),
            message: response_upload.toString(),
          ),
        );
      }
    } else {
      emit(
        PickerImageStateFailed(
          dateTime: DateTime.now(),
          message: "Error : User is null",
        ),
      );
    }
  }


  void reset() {
    emit(PickerImageStateInitial(path: ''));
  }
}
