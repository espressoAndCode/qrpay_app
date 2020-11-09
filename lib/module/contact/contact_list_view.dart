import 'package:flutter/material.dart';
import 'package:qrpay_app/widget/drawer.dart';


class ContactPage extends StatelessWidget {

  static const String routeName = '/contact';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contact"),
        ),
        drawer: AppDrawer(),
        body: Center(
            child: Text("Contact")
        )
    );
  }

}