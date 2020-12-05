import 'package:firebase_auth/firebase_auth.dart';
// import 'package:qrpay_app/models/user.dart';
import 'package:qrpay_app/module/account/user.dart' as userModel;


class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user obj based on Firebase user
  userModel.User _userFromFirebaseUser(UserCredential user) {
    return user != null ? userModel.User(uid: user.user.uid) : null;
  }

  //sign in anon
  Future signInAnon() async {
    try {
      UserCredential user = await _auth.signInAnonymously();

      return  _userFromFirebaseUser(user);
    } catch(e) {
      print(e.toString());
      return null;

    }
  }


  //sign in email-pass

  //register with email-pass

  //sign out
}