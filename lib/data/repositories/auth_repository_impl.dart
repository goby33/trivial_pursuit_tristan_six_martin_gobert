import 'package:firebase_auth/firebase_auth.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/sources/auth_firebase.dart';

class AuthRepositoryImpl {
  static AuthFirebase? _authFirebase;

  AuthRepositoryImpl._();

  static AuthRepositoryImpl getInstance() {
    _authFirebase ??= AuthFirebase.getInstance();
    return AuthRepositoryImpl._();
  }

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
  }) async {
    try {
      final response = await _authFirebase?.signUp(email, password);
      if (response == null) {
        return FailResponse(0.toString(), failure: "Error user null");
      } else {
        return SuccessResponse(1.toString(), response);
      }
    } on FirebaseAuthException catch (e) {
      return FailResponse(e.code, failure: e.message);
    }
  }

  Future<void> signOut() async {
    return await _authFirebase?.logOut();
  }

  Future<ApiResponse<User?>> getCurrentUser() async {
    try {
      final response = await _authFirebase?.getCurrentUser();
      if (response == null) {
        return SuccessResponse(404.toString(), null);
      } else {
        return SuccessResponse(402.toString(), response);
      }
    } on FirebaseAuthException catch (e) {
      return FailResponse(e.code, failure: e.message);
    }
  }
}

