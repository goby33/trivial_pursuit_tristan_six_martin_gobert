import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/user/user_model.dart';

class UserFirebase {
  static FirebaseFirestore? _firebaseFirestore;
  static UserFirebase? _instanceUserFirebase;
  static late final CollectionReference<UserModel> _listUsers;
  UserFirebase._();

  static UserFirebase getInstance() {
    _firebaseFirestore ??= FirebaseFirestore.instance;
    if (_instanceUserFirebase == null) {
      _listUsers = _firebaseFirestore!
          .collection('users')
          .withConverter<UserModel>(
              fromFirestore: (snapshot, _) =>
                  UserModel.fromJson(snapshot.data()!),
              toFirestore: (object, _) => object.toJson());
      _instanceUserFirebase = UserFirebase._();
    }
    return _instanceUserFirebase!;
  }

  Future<UserModel?> getUserModel({
    required String uid,
  }) async {
    final response = await _listUsers.doc(uid).get();
    return response.data();
  }

  Future<List<UserModel>?> getListUsers() async {
    final response = await _listUsers.orderBy("score", descending: true).get();
    final listUsers = response.docs.map((e) => e.data()).toList();
    return listUsers;
  }

  Future<List<UserModel>?> searchUsers({
    required String text,
  }) async {
    final response = await _listUsers.orderBy("score", descending: true).get();
    // final listUsers = response.docs
    //     .map((e) => e.data())
    //     .where((element) =>
    //         element.name.toLowerCase().contains(text.toLowerCase()))
    //     .toList();

    return [];
  }

  Future<void> createUserModel({
    required UserModel userModel,
    required String uid,
  }) async {
    await _listUsers.doc(uid).set(userModel);
  }

  Future<void> updateUser({
    required UserModel user,
    required String uid,
  }) async {
    await _listUsers.doc(uid).update(user.toJson());
  }

  Future<void> updatePathPhoto({
    required String uid,
    required String pathPhoto,
  }) async {
    await _listUsers.doc(uid).update({"pathPhoto": pathPhoto});
  }

  Future<UserModel?> getUser({
    required String uid,
  }) async {
    return _listUsers.doc(uid).get().then((value) => value.data());
  }

  Future<void> deleteUser({
    required String uid,
  }) async {
    await _listUsers.doc(uid).delete();
  }
}
