import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/sources/auth_firebase.dart';

class AuthRepositoryImpl {
  static AuthFirebase? _authFirebase;
  static User? _user;
  static  AuthRepositoryImpl? _instanceAuthRepositoryImpl;

  AuthRepositoryImpl._();

  static AuthRepositoryImpl get instance{
    _authFirebase ??= AuthFirebase.getInstance();
    _user ??= null;
    _instanceAuthRepositoryImpl ??= AuthRepositoryImpl._();
    return _instanceAuthRepositoryImpl!;
  }

  Future<ApiResponse<User>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final response_user = await _authFirebase?.signIn(email: email, password: password);
      if (response_user == null) {
        return FailResponse(0.toString(), failure: "Error user null");
      } else {
        _user = response_user;
        return SuccessResponse(1.toString(), response_user);
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
      final responseAuth = await _authFirebase?.signUp(email: email,password: password);
      if (responseAuth == null) {
        return FailResponse(0.toString(), failure: "Error user null");
      } else {
        _user = responseAuth;
        return SuccessResponse(1.toString(), responseAuth);
      }
    } on FirebaseAuthException catch (e) {
      return FailResponse(e.code, failure: e.message);
    }
  }

  Future<ApiResponse<bool>> signOut() async {
    try {
      await _authFirebase?.logOut();
      return SuccessResponse(402.toString(), true);
    } on FirebaseAuthException catch (e) {
      return FailResponse(e.code, failure: e.message);
    }
  }

  Future<ApiResponse<User?>> getCurrentUser() async {
    if (_user != null) {
      return SuccessResponse(1.toString(), _user);
    }
    try {
      final response = await _authFirebase?.getCurrentUser();
      if (response == null) {
        _user = null;
        return SuccessResponse(404.toString(), null);
      } else {
        _user = response;
        return SuccessResponse(1.toString(), response);
      }
    } on FirebaseAuthException catch (e) {
      _user = null;
      return FailResponse(e.code, failure: e.message);
    }
  }


  Future<ApiResponse<void>> resetPassword({required String email}) async {
    try {
      await _authFirebase?.sendPasswordResetEmail(email: email);
      return SuccessResponse(402.toString(), null);
    } on FirebaseAuthException catch (e) {
      return FailResponse(e.code, failure: e.message);
    }
  }
}
