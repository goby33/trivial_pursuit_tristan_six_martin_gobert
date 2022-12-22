import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/user/list_users_model.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/user/user_model.dart';

class UserFirebase {
  static final FirebaseFirestore _firebaseFirestore =
      FirebaseFirestore.instance;
  static UserFirebase? _instanceUserFirebase;
  static late final CollectionReference<UserModel> _listUsers;
  UserFirebase._();

  static UserFirebase getInstance() {
    if (_instanceUserFirebase == null) {
      _listUsers = _firebaseFirestore
          .collection('users')
          .withConverter<UserModel>(
              fromFirestore: (snapshot, _) =>
                  UserModel.fromJson(snapshot.data()!),
              toFirestore: (object, _) => object.toJson());
      _instanceUserFirebase = UserFirebase._();
    }
    return _instanceUserFirebase!;
  }

  Future<ListUsersModel?> getListUsers() async {
    return ListUsersModel(
      list_users: await _listUsers.get().then((value) => value.docs
          .map((e) => e.data())
          .toList(growable: false)),
    );
  }

  Future<void> addUser(UserModel user) async {
    await _listUsers.doc(user.uid).set(user);
  }

  Future<void> updateUser(UserModel user) async {
    await _listUsers.doc(user.uid).update(user.toJson());
  }

  Future<UserModel?> getUser(String uid) async {
    return _listUsers.doc(uid).get().then((value) => value.data());
  }
}
