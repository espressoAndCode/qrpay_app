import 'package:flutter/material.dart';
import 'package:qrpay_app/widget/drawer.dart';

class SplashPage extends StatelessWidget {
  static const String routeName = '/splash';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QRPAY Touch-Free"),
        elevation: 30.0,
        actions: <Widget>[
          ElevatedButton(
              onPressed: () {
                print("High contrast button clicked\nChanging app contrast\n");
              },
              child: Text('High Contrast')),
        ],
      ),
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
        ),
      ),
    );
  }
}
