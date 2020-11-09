import 'package:flutter/material.dart';
import 'package:qrpay_app/widget/drawer.dart';


class AccountPage extends StatelessWidget {

  static const String routeName = '/account';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Account"),
        ),
        drawer: AppDrawer(),
        body: Center(
            child: Text("Account")
        )
    );
  }

}