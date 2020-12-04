import 'package:flutter/material.dart';
import 'package:qrpay_app/widget/drawer.dart';

class HomePage extends StatelessWidget {

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("QRPAY Touch-Free"),
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
          )
        )
    );
  }

}