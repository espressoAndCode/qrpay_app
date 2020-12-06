import 'package:flutter/material.dart';
import 'package:qrpay_app/widget/drawer.dart';
import 'package:qrpay_app/module/splash/splash_view.dart';

class AboutUsPage extends StatelessWidget {
  static const String routeName = '/about_us';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("About Us")),
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
              padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
              child: Text(
                "About QRPAY",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 0, 20, 30),
              child: Text(
                "QRPAY is a mobile payment service that allows users to make touch-free purchases in stores and restaurants just by attachig a payment method and scanning a QR code.",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 0, 20, 30),
              child: Text(
                "Payments can also be collected from others by creating unique QR Codes that others can scan to pay you.",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      //
      floatingActionButton: FloatingActionButton(
        tooltip: 'Click it to return to the Homepage',
        hoverElevation: 50,
        onPressed: () {
          print("Going back to homepage");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => SplashPage(),
            ),
          );
        },
        child: Icon(Icons.home),
      ),
    );
  }
}
