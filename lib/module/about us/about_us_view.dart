import 'package:flutter/material.dart';
import 'package:qrpay_app/widget/drawer.dart';

class AboutUsPage extends StatelessWidget {
  static const String routeName = '/about_us';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
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
                "QRPAY is a mobile payment service that allows users to make touch-free purchases in stores and restaurants just by attaching a payment method and scanning a QR Code.",
                style: TextStyle(
                  fontSize: 27,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 60, 20, 20),
              child: Text(
                "Payments can also be collected from others by creating unique QR Codes that others can scan to pay you.",
                style: TextStyle(
                  fontSize: 27,
                ),
              ),
            ),
          ])),

      //
    );
  }
}
