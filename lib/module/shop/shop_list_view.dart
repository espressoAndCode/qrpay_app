import 'package:flutter/material.dart';
import 'package:qrpay_app/widget/drawer.dart';


class ShopPage extends StatelessWidget {

  static const String routeName = '/shop';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Shop"),
        ),
        drawer: AppDrawer(),
        body: Center(
            child: Text("Shop")
        )
    );
  }

}