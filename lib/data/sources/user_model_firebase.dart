import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/user/user_model.dart';

class UserModelFirebase {
  static FirebaseFirestore? _firebaseFirestore;
  static UserModelFirebase? _instanceUserFirebase;
  static late final CollectionReference<UserModel> _listUsers;
  UserModelFirebase._();

  static UserModelFirebase getInstance() {
    _firebaseFirestore ??= FirebaseFirestore.instance;
    if (_instanceUserFirebase == null) {
      _listUsers = _firebaseFirestore!
          .collection('users')
          .withConverter<UserModel>(
              fromFirestore: (snapshot, _) =>
                  UserModel.fromJson(snapshot.data()!),
              toFirestore: (object, _) => object.toJson());
      _instanceUserFirebase = UserModelFirebase._();
    }
    return _instanceUserFirebase!;
  }

  // GETTERS
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
    // get user where name != null
    final listUsersWidthName = response.docs
        .map((e) => e.data())
        .where((element) => element.name != null)
        .toList();
    final searchUser = listUsersWidthName
        .where((element) =>
            element.name!.toLowerCase().contains(text.toLowerCase()))
        .toList();
    return searchUser;
  }

  Future<void> createUserModel({
    required UserModel userModel,
    required String uid,
  }) async {
    await _listUsers.doc(uid).set(userModel);
  }

  // UPDATE
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

  Future<void> updateName({
    required String uid,
    required String name,
  }) async {
    await _listUsers.doc(uid).update({"name": name});
  }

// update email
  Future<void> updateEmail({
    required String uid,
    required String email,
  }) async {
    await _listUsers.doc(uid).update({"email": email});
  }

  // DELETE

  Future<void> deleteUser({
    required String uid,
  }) async {
    await _listUsers.doc(uid).delete();
  }
}
