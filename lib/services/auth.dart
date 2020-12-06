// Code below from:
//https://stackoverflow.com/questions/64173578/flutter-get-firebase-custom-claims-while-writing-firebase-user-to-own-user-ins

import 'package:qrpay_app/module/account/user.dart' as local;
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:qrpay_app/services/database.dart';


class AuthService {
  final auth.FirebaseAuth _auth = auth.FirebaseAuth.instance;

  // create user obj based on firebase user
  Future<local.User> _userFromFirebaseUser(auth.User user) async {
    // final isAdmin = (await _userClaims)['admin'] == true;

    return user != null
        ? local.User(
        uid: user.uid)
        : null;
  }

  // auth change user stream
  Stream<local.User> get user {
    return _auth.authStateChanges().asyncMap(_userFromFirebaseUser);
  }

  // sign in anon
  Future signInAnon() async {
    try {
      auth.UserCredential result = await _auth.signInAnonymously();
      auth.User user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email and password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      auth.UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      auth.User user = result.user;
      print('Successfully logged in, User UID: ${user.uid}');
      return user;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // register with email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      auth.UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      auth.User user = result.user;
      // create a new document for the user with the uid and defaults
      await DatabaseService(uid: user.uid).updateUserData('','','','','','','','',true,true);
      print('Successfully registered, User UID: ${user.uid}');
      return _userFromFirebaseUser(user);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // sign out
  Future signOut() async {
    try {
      print('User signed out');
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  Future<Map<dynamic, dynamic>> get _userClaims async {
    final user = _auth.currentUser;

    // If refresh is set to true, a refresh of the id token is forced.
    final idTokenResult = await user.getIdTokenResult(false);

    return idTokenResult.claims;
  }
}