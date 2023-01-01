import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class PictureFirebase {
  final _firestore = FirebaseFirestore.instance;
  final _storage = FirebaseStorage.instance;
  static PictureFirebase? _instancePictureFirebase;

  PictureFirebase._();

  static PictureFirebase getInstance() {
    _instancePictureFirebase ??= PictureFirebase._();
    return _instancePictureFirebase!;
  }

  Future<String> uploadPicture({required String filePath}) async {
    final storageRef = FirebaseStorage.instance.ref();
    final mountainsRef = storageRef.child("mountains.jpg");
    final mountainImagesRef = storageRef.child("images/mountains.jpg");
    assert(mountainsRef.name == mountainImagesRef.name);
    assert(mountainsRef.fullPath != mountainImagesRef.fullPath);
    try {
      File file = File(filePath);
      await mountainImagesRef.putFile(file);
    } on FirebaseException catch (e) {
      print(e);
    }


    /*final StorageReference ref = _storage.ref().child(pictureName);
    final StorageUploadTask uploadTask = ref.putFile(picture);
    final StorageTaskSnapshot downloadUrl = (await uploadTask.onComplete);
    final String url = (await downloadUrl.ref.getDownloadURL());*/
    return "good";
  }

  /*Future<void> deletePicture(String url) async {
    final String pictureName = url.split('/').last;
    final StorageReference ref = _storage.ref().child(pictureName);
    await ref.delete();
  }

  Future<void> addPicture(Picture picture) async {
    await _firestore.collection('pictures').add(picture.toJson());
  }

  Future<void> deletePictureById(String id) async {
    await _firestore.collection('pictures').document(id).delete();
  }

  Future<List<Picture>> getPictures() async {
    final QuerySnapshot result = await _firestore.collection('pictures').getDocuments();
    final List<DocumentSnapshot> documents = result.documents;
    return documents.map((doc) => Picture.fromJson(doc.data)).toList();
  }*/
}
