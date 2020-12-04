import 'package:flutter/material.dart';
import 'package:qrpay_app/widget/drawer.dart';


class SellPage extends StatelessWidget {

  static const String routeName = '/sell';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sell"),
        ),
        drawer: AppDrawer(),
        body: Center(
            child: Text("Sell")
        )
    );
  }

}