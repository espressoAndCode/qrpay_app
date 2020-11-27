import 'package:flutter/material.dart';
import 'package:qrpay_app/widget/drawer.dart';

class HelpPage extends StatelessWidget {
  static const String routeName = '/help';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help"),
        elevation: 30.0,
      ),
      drawer: AppDrawer(),
      body: Center(
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Container(
              // alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(20, 60, 20, 30),
              child: Text(
                "QRPAY Help",
                style: TextStyle(
                  fontSize: 40,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(40, 10, 20, 20),
              child: Text(
                "1. Setup new account",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(40, 10, 20, 20),
              child: Text(
                "2. Connect pay account",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(40, 10, 20, 20),
              child: Text(
                "3. Make a payment",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(40, 10, 20, 20),
              child: Text(
                "4. Receive a payment",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(40, 10, 20, 20),
              child: Text(
                "5. Create sales account",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(40, 10, 20, 20),
              child: Text(
                "6. Contact support",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(40, 10, 20, 20),
              child: Text(
                "7. Where QRPAY is accepted",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(40, 10, 20, 20),
              child: Text(
                "8. Account safety",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(40, 10, 20, 20),
              child: Text(
                "9. What is touch-free?",
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
