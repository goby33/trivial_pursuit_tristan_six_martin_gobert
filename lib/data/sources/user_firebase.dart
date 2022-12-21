import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/user/user_model.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/user/list_users_model.dart';

class UserFirebase {
  static final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  static UserFirebase? _instanceUserFirebase;
  UserFirebase._();

  static late final CollectionReference<ListUsersModel> _listUsers;

  static UserFirebase getInstance() {
    if (_instanceUserFirebase == null) {
      _listUsers = _firebaseFirestore
          .collection('users')
          .withConverter<ListUsersModel>(
          fromFirestore: (snapshot, _) =>
              ListUsersModel.fromJson(snapshot.data()!),
          toFirestore: (object, _) => object.toJson());
      _instanceUserFirebase = UserFirebase._();
    }
    return _instanceUserFirebase!;
  }

  Future<ListUsersModel?> getListUsers() async {
    DocumentSnapshot<ListUsersModel> listUsersSnap =
    await _listUsers.doc().get();
    if (!listUsersSnap.exists) {
      return null;
    }
    return listUsersSnap.data();
  }
}
