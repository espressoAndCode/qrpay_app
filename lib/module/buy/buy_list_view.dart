import 'package:flutter/material.dart';
import 'package:qrpay_app/widget/drawer.dart';

class BuyPage extends StatelessWidget {
  static const String routeName = '/buy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Buy"),
          elevation: 30.0,
        ),
        drawer: AppDrawer(),
        body: Center(child: Text("Buy")));
  }
}
