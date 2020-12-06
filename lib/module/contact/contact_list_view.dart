import 'package:flutter/material.dart';
import 'package:qrpay_app/widget/drawer.dart';
// import 'package:qrpay_app/module/splash/splash_view.dart';
import 'package:qrpay_app/module/wrapper.dart';

class ContactPage extends StatelessWidget {
  static const String routeName = '/contact';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
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
              padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: Text(
                "Contact QRPAY",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            Container(
              child: Text(
                "Email:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Text(
                "help@QRPAY.com",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Text(
                "Phone:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
              child: Text(
                "123-456-7890",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Text(
                "Message",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: 300,
              height: 300,
              alignment: Alignment(-0.5, -0.8),
              decoration: BoxDecoration(
                  color: Colors.red[300],
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                "Enter message here...",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        elevation: 30.0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.send,
              color: Colors.white,
            ),
            // label: 'Scan QR Code',
            title: Text(
              'Submit',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            // label: 'Sell',
            title: Text(
              'Home',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            print("Submitting the message");
          }
          if (index == 1) {
            print("Going to Homepage");
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => Wrapper(),
              ),
            );
          }
        },
      ),
      //
    );
  }
}
