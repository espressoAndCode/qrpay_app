import 'package:flutter/material.dart';
import 'package:qrpay_app/services/auth.dart';
import 'package:qrpay_app/widget/drawer.dart';
import 'package:qrpay_app/module/qr/qr_view.dart';
import 'package:qrpay_app/module/sell/sell_list_view.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("QRPAY Touch-Free"), actions: <Widget>[
        FlatButton.icon(
          icon: Icon(
            Icons.person,
            color: Colors.white,
          ),
          onPressed: () async {
            await _auth.signOut();
          },
          label: Text(
            'Logout',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        )
      ]),
      drawer: AppDrawer(),
      body: new Center(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              child: new Image.asset(
                'res/images/qplogo.png',
                width: MediaQuery.of(context).size.width * .9,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.qr_code,
              color: Colors.white,
            ),
            // label: 'Scan QR Code',
            title: Text(
              'Scan QR Code',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.attach_money,
              color: Colors.white,
            ),
            // label: 'Sell',
            title: Text(
              'Sell',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            print("Going to QR code");
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => QRPage(),
              ),
            );
          }
          if (index == 1) {
            print("Going to Sell");
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => SellPage(),
              ),
            );
          }
        },
      ),
    );
  }
}
