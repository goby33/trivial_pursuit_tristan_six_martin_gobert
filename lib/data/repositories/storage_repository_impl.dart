import 'dart:io';

import 'package:trivial_pursuit_six_tristan_gobert_martin/config/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/sources/picture_firebase.dart';

class StorageRepositoryImpl {
  static PictureFirebase? _pictureFirebase;
  static StorageRepositoryImpl? _instanceStorageRepository;

  StorageRepositoryImpl._();

  static StorageRepositoryImpl getInstance() {
    _pictureFirebase ??= PictureFirebase.getInstance();
    _instanceStorageRepository ??= StorageRepositoryImpl._();
    return _instanceStorageRepository!;
  }

  Future<ApiResponse<String>> uploadPicture({
    required File file,
    required String uid,
  }) async {
    try {
      final response =
          await _pictureFirebase?.uploadPicture(file: file, folderName: uid);
      if (response == null) {
        return FailResponse(0.toString(), failure: "Error user null");
      } else {
        return SuccessResponse(1.toString(), response);
      }
    } catch (e) {
      return FailResponse(e.toString(), failure: e.toString());
    }
  }
}
