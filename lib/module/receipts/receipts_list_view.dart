import 'package:flutter/material.dart';
import 'package:qrpay_app/widget/drawer.dart';


class ReceiptsPage extends StatelessWidget {

  static const String routeName = '/receipts';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Receipts"),
        ),
        drawer: AppDrawer(),
        body: Center(
            child: Text("Receipts")
        )
    );
  }

}