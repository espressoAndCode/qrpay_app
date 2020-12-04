import "package:flutter/material.dart";
import 'package:intl/intl.dart';
import 'package:qrpay_app/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        elevation: 0.0,
        title: Text('Sign in to QRPAY Touch Free')

      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50.0),
        child:  RaisedButton(
          child: Text('Sign in Anon'),
          onPressed: () async {
            dynamic result = await _auth.signInAnon();
            if (result == null){
              print('Error signing in');
            } else {
              print('Signed in');
              print(result);
            }

          }
        )
      ),
    );
  }
}
