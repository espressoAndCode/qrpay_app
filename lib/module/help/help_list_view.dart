import 'package:flutter/material.dart';
import 'package:qrpay_app/widget/drawer.dart';
// import 'package:qrpay_app/module/splash/splash_view.dart';
import 'package:qrpay_app/module/wrapper.dart';

class HelpPage extends StatelessWidget {
  static const String routeName = '/help';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Help")),
        actions: [
          IconButton(
            icon: Image.asset('res/images/qplogo.png'),
            onPressed: () {},
          ),
        ],
        elevation: 30.0,
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
              child: Text(
                "QRPAY Help",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(40, 0, 20, 20),
              child: Text(
                "1. Setup new account",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(40, 5, 20, 20),
              child: Text(
                "2. Connect pay account",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
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
                  fontWeight: FontWeight.bold,
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
                  fontWeight: FontWeight.bold,
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
                  fontWeight: FontWeight.bold,
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
                  fontWeight: FontWeight.bold,
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
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(40, 10, 20, 20),
              child: Text(
                "8. Where QRPAY is accepted",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(40, 10, 20, 20),
              child: Text(
                "9. Account safety",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(40, 10, 20, 20),
              child: Text(
                "10. What is touch-free?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Click it to return to the Homepage',
        hoverElevation: 50,
        onPressed: () {
          print("Going back to homepage");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => Wrapper(),
            ),
          );
        },
        child: Icon(Icons.home),
      ),
      //
    );
  }
}
