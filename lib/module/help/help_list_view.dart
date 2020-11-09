import 'package:flutter/material.dart';
import 'package:qrpay_app/widget/drawer.dart';


class HelpPage extends StatelessWidget {

  static const String routeName = '/help';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Help"),
        ),
        drawer: AppDrawer(),
        body: Center(
            child: Text("Help")
        )
    );
  }

}