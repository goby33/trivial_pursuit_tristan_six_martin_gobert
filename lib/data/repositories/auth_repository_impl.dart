import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/user/list_users_model.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/user/user_model.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/sources/auth_firebase.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/sources/user_firebase.dart';

class AuthRepositoryImpl {
  static AuthFirebase? _authFirebase;
  static UserFirebase? _userFirebase;

  AuthRepositoryImpl._();

  static AuthRepositoryImpl getInstance() {
    _authFirebase ??= AuthFirebase.getInstance();
    _userFirebase ??= UserFirebase.getInstance();
    return AuthRepositoryImpl._();
  }

  //AUTH METHODS
  Future<ApiResponse<User>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _authFirebase?.signIn(email, password);
      if (response == null) {
        return FailResponse(0.toString(), failure: "Error user null");
      } else {
        return SuccessResponse(1.toString(), response);
      }
    } on FirebaseAuthException catch (e) {
      return FailResponse(e.code, failure: e.message);
    }
  }

  Future<ApiResponse<User>> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final responseAuth = await _authFirebase?.signUp(email, password);
      if (responseAuth == null) {
        return FailResponse(0.toString(), failure: "Error user null");
      } else {
        await _userFirebase?.addUser(
          UserModel(
            email: responseAuth.email ?? "",
            uid: responseAuth.uid,
            name: name,
            numberGoodAnswer: 0,
            numberDayLogged: 0,
            dateOfLastConnexion: 0,
            score: 0,
          ),
        );
        return SuccessResponse(1.toString(), responseAuth);
      }
    } on FirebaseAuthException catch (e) {
      return FailResponse(e.code, failure: e.message);
    }
  }

  Future<void> signOut() async {
    return await _authFirebase?.logOut();
  }

  Future<ApiResponse<UserModel?>> getCurrentUser() async {
    try {
      final response = await _authFirebase?.getCurrentUser();
      if (response == null) {
        return SuccessResponse(404.toString(), null);
      } else {
        final responseUser = await _userFirebase?.getUser(response.uid);
        if (responseUser == null) {
          return FailResponse(404.toString(), failure: "user not found");
        } else {
          return SuccessResponse(402.toString(), responseUser);
        }
      }
    } on FirebaseAuthException catch (e) {
      return FailResponse(e.code, failure: e.message);
    }
  }

  Future<ApiResponse<bool>> isConnected() async {
    try {
      final response = await _authFirebase?.getCurrentUser();
      if (response == null) {
        return SuccessResponse(404.toString(), false);
      } else {
        return SuccessResponse(402.toString(), true);
      }
    } on FirebaseAuthException catch (e) {
      return FailResponse(e.code, failure: e.message);
    }
  }

  //USER METHODS

  Future<void> deleteUser() async {
    //await _authFirebase?.deleteUser();
    //await _userFirebase?.deleteUser();
  }

  Future<ApiResponse<ListUsersModel>> getListUsers() async {
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

  Future<ApiResponse<ListUsersModel>> searchUsers({
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

  Future<ApiResponse<void>> updateUser({
    required UserModel user,
  }) async {
    try {
      final response = await _userFirebase?.updateUser(user: user);
      return SuccessResponse(1.toString(), response);
    } on Firebase catch (e) {
      return FailResponse(e.toString(), failure: e.toString());
    }
  }
}
