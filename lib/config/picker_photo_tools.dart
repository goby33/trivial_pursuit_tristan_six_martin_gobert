import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

class PickerPhotoTools {
  // field
  static XFile? _imageFileList;
  static late final ImagePicker _picker;
  static PickerPhotoTools? _pickerPhotoTools;

  XFile? get imageFileList => _imageFileList; // function


  PickerPhotoTools._();

  static PickerPhotoTools getInstance() {
    _imageFileList = null;
    _picker = ImagePicker();
    _pickerPhotoTools ??= PickerPhotoTools._();
    return _pickerPhotoTools!;
  }

   void setImageFileListFromFile(XFile? value) {
    _imageFileList = value == null ? null : value;
  }

   Future<void> onImageButtonPressed({
    required ImageSource source,
  }) async {
    try {
      final XFile? pickedFile = await _picker.pickImage(
        source: source,
      );
      if (pickedFile != null) {
        setImageFileListFromFile(pickedFile);
        if (defaultTargetPlatform == TargetPlatform.android) {
          await retrieveLostData();
        }
        print(pickedFile.path);
      }
    } catch (e) {
      print("error");
      setImageFileListFromFile(null);
    }
  }

   Future<void> retrieveLostData() async {
    final LostDataResponse response = await _picker.retrieveLostData();
    if (response.isEmpty) {
      print("a");
      return;
    }
    if (response.file != null) {
      if (response.files == null) {
        print("b");
        setImageFileListFromFile(response.file);
      } else {
        setImageFileListFromFile(response.file);
      }
    } else {
      print("error not file");
      setImageFileListFromFile(null);
    }
  }
}
