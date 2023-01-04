import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

class AuthFirebase {
  static FirebaseAuth? _authFirebase;
  static AuthFirebase? _instanceAuthFirebase;

  AuthFirebase._();

  static AuthFirebase getInstance() {
    if (_instanceAuthFirebase == null) {
      _authFirebase = FirebaseAuth.instance;
    }
    _instanceAuthFirebase ??= AuthFirebase._();
    return _instanceAuthFirebase!;
  }

  Future<User?> signUp({
    required String email,
    required String password,
  }) async {
    UserCredential result = await _authFirebase!.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return result.user;
  }

  Future<User?> signIn({
    required String email,
    required String password,
  }) async {
    UserCredential result = await _authFirebase!.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return result.user;
  }

  Future<void> logOut() async {
    await _authFirebase!.signOut();
  }

  Future<User?> getCurrentUser() async {
    return _authFirebase!.currentUser;
  }

  Future<void> sendPasswordResetEmail({
    required String email,
  }) async {
    await _authFirebase!.sendPasswordResetEmail(email: email);
  }

  Future<void> deleteUser() async {
    await _authFirebase!.currentUser!.delete();
  }
}
