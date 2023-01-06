import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class PictureFirebase {
  static  FirebaseStorage? _storage;
  static PictureFirebase? _instancePictureFirebase;

  PictureFirebase._();

  static PictureFirebase getInstance() {
    _storage ??= FirebaseStorage.instance;
    _instancePictureFirebase ??= PictureFirebase._();
    return _instancePictureFirebase!;
  }

  Future<String> uploadPicture({
    required File file,
    required String folderName,
  }) async {
    final path = file.path;
    final name = path.split('/').last;
    final format = name.split(".").last;
    final photoName = "profile."+format;


    final storageRef = FirebaseStorage.instance.ref();
    final mountainsRef = storageRef.child(photoName);
    final mountainImagesRef = storageRef.child("images/"+folderName+"/"+photoName);
    assert(mountainsRef.name == mountainImagesRef.name);
    assert(mountainsRef.fullPath != mountainImagesRef.fullPath);
    await mountainImagesRef.putFile(file);
    return mountainImagesRef.getDownloadURL();
  }

}
