import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

class AuthFirebase {
  static  FirebaseAuth? _authFirebase;
  static AuthFirebase? _instanceAuthFirebase;

  AuthFirebase._();

  static AuthFirebase getInstance() {
    if (_instanceAuthFirebase == null) {
      _authFirebase = FirebaseAuth.instance;
    }
    _instanceAuthFirebase ??= AuthFirebase._();
    return _instanceAuthFirebase!;
  }

  Future<User?> signUp(String email, String password) async {
    UserCredential result = await _authFirebase!.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return result.user;
  }

  Future<User?> signIn(String email, String password) async {
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
}

// 3 -> hard
//
