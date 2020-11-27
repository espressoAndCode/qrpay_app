import 'package:flutter/material.dart';
import 'package:qrpay_app/widget/drawer.dart';

class ContactPage extends StatelessWidget {
  static const String routeName = '/contact';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
        elevation: 30.0,
      ),
      drawer: AppDrawer(),
      body: Center(
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Container(
              // alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(20, 60, 20, 20),
              child: Text(
                "Contact QRPAY",
                style: TextStyle(
                  fontSize: 40,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            Container(
              child: Text(
                "Email:",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
              child: Text(
                "help@QRPAY.com",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              child: Text(
                "Phone:",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
              child: Text(
                "123-456-7890",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
              child: Text(
                "Message",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              width: 300,
              height: 300,
              alignment: Alignment(-0.5, -0.8),
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                "Enter message here...",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ])),

      //
    );
  }
}
