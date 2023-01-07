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

  // email exists
  Future<bool> emailExists({required String email}) async {
    bool exists = false;
    try {
      final response = await _authFirebase!.fetchSignInMethodsForEmail(email);
      return response.length > 0;
    } catch (e) {
      exists = false;
    }
    return exists;
  }
  //update email
  Future<void> updateEmail({required String email}) async {
    await _authFirebase!.currentUser!.updateEmail(email);
  }
  // update password
  Future<void> updatePassword({required String password}) async {
    await _authFirebase!.currentUser!.updatePassword(password);
  }


  // update profile
  Future<void> updateProfile({required String name}) async {
    await _authFirebase!.currentUser!.updateDisplayName(name);
  }

  // string password is equal to old password
  Future<bool>  reauthenticate({required String email, required String password}) async {
    bool isEqual = false;
    try {
      await _authFirebase!.currentUser!.reauthenticateWithCredential(
        EmailAuthProvider.credential(
          email: _authFirebase!.currentUser!.email!,
          password: password,
        ),
      );
      isEqual = true;
    } catch (e) {
      isEqual = false;
    }
    return isEqual;
  }




  Future<void> deleteUser() async {
    await _authFirebase!.currentUser!.delete();
  }

  // get all users

}
