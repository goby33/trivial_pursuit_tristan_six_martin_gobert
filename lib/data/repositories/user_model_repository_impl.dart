import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/user/user_model.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/sources/user_firebase.dart';

class UserModelRepositoryImpl {
  static UserFirebase? _userFirebase;
  static UserModel? _userModel;
  static UserModelRepositoryImpl? _instanceUserRepositoryImpl;

  UserModelRepositoryImpl._();

  static UserModelRepositoryImpl getInstance() {
    _userFirebase ??= UserFirebase.getInstance();
    _instanceUserRepositoryImpl ??= UserModelRepositoryImpl._();
    return _instanceUserRepositoryImpl!;
  }

  //create user model
  Future<ApiResponse<void>> createUserModel({
    required String name,
    required String email,
    required String uid,
  }) async {
    try {
      _userModel = UserModel(email, name, 0, 0, "12/12/2023", "", score: 0);
      final response = await _userFirebase?.createUserModel(
          userModel: _userModel!, uid: uid);
      return SuccessResponse(402.toString(), response);
    } on FirebaseAuthException catch (e) {
      return FailResponse(e.code, failure: e.message);
    }
  }

  Future<void> deleteUser({
    required String uid,
  }) async {
    await _userFirebase?.deleteUser(uid: uid);
  }

  //get user uid
  Future<ApiResponse<UserModel>> getUserModel({
    required String uid,
  }) async {
    try {
      final response_user = await _userFirebase?.getUserModel(uid: uid);
      if (response_user == null) {
        return FailResponse(0.toString(), failure: "Error user null");
      } else {
        return SuccessResponse(1.toString(), response_user);
      }
    } on FirebaseAuthException catch (e) {
      return FailResponse(e.code, failure: e.message);
    }
  }

  Future<ApiResponse<List<UserModel>>> getListUserModel() async {
    try {
      final response = await _userFirebase?.getListUsers();
      if (response == null) {
        return FailResponse(0.toString(), failure: "Error user null");
      } else {
        return SuccessResponse(1.toString(), response);
      }
    } catch (e) {
      return FailResponse(e.toString(), failure: e.toString());
    }
  }

  Future<ApiResponse<List<UserModel>>> searchUserModel({
    required String text,
  }) async {
    try {
      final response = await _userFirebase?.searchUsers(text: text);
      if (response == null) {
        return FailResponse(0.toString(), failure: "Error user null");
      } else {
        return SuccessResponse(1.toString(), response);
      }
    } catch (e) {
      return FailResponse(e.toString(), failure: e.toString());
    }
  }

  Future<ApiResponse<void>> updateUserModel({
    required UserModel user,
    required String uid,
  }) async {
    try {
      final response = await _userFirebase?.updateUser(user: user, uid: uid);
      return SuccessResponse(1.toString(), response);
    } on Firebase catch (e) {
      return FailResponse(e.toString(), failure: e.toString());
    }
  }

  Future<ApiResponse<void>> updatePathUserModel({
    required String path,
    required String uid,
  }) async {
    try {
      final response = await _userFirebase?.updatePathPhoto(
        uid: uid,
        pathPhoto: path,
      );
      return SuccessResponse(1.toString(), response);
    } on Firebase catch (e) {
      return FailResponse(e.toString(), failure: e.toString());
    }
  }
}
