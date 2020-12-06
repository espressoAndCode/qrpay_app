import 'package:flutter/material.dart';
import 'package:qrpay_app/services/auth.dart';
import 'package:qrpay_app/widget/drawer.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("QRPAY Touch-Free"), actions: <Widget>[
          FlatButton.icon(
              icon: Icon(Icons.person),
              onPressed: () async {
                await _auth.signOut();
              },
              label: Text('Logout'))
        ]),
        drawer: AppDrawer(),
        body: new Center(
            child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              child: new Image.asset(
                'res/images/qplogo.png',
                width: MediaQuery.of(context).size.width * .9,
                fit: BoxFit.cover,
              ),
            ),
          ],
        )));
  }
}
