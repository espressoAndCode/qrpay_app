import "package:flutter/material.dart";
import 'package:qrpay_app/services/auth.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        elevation: 0.0,
        title: Text('Sign in to QRPAY'),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('Register'),
            onPressed: (){
              widget.toggleView();
            },
          ),
        ],

      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 60, horizontal: 50.0),
        child: Form(
          child: Column(
            children: <Widget>[
              new Container(
                child: new Image.asset(
                  'res/images/qplogo.png',
                  width: MediaQuery.of(context).size.width * .9,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20.0,),
              TextFormField(
                onChanged: (val) {
                  setState(() {
                    email = val;
                  });
                },
              ),
              SizedBox(height: 20.0,),
              TextFormField(
                obscureText: true,
                onChanged: (val) {
                  setState(() {
                    password = val;
                  });
                },
              ),
              SizedBox(height: 20.0,),
              RaisedButton(
                  color: Colors.red[400],
                  child: Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    print(email);
                    print(password);

                  })

            ],
          ),
        ),
      ),
    );
  }
}
