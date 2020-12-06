import 'package:flutter/material.dart';
import 'user.dart';
import 'package:qrpay_app/widget/config.dart';

import 'package:qrpay_app/widget/drawer.dart';
import 'package:qrpay_app/module/splash/splash_view.dart';

class AccountPage extends StatefulWidget {
  static const String routeName = '/account';
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final _formKey = GlobalKey<FormState>();
  final _user = User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Account')),
        actions: [
          IconButton(
            icon: Image.asset('res/images/qplogo.png'),
            onPressed: () {},
          ),
        ],
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
                "Account",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            Container(
              child: Text(
                "Tim Smith",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
              child: Text(
                "   123 Somesuch St.\nSunnyville, SC 12345",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Text(
                "TSmith@thisURL.com",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
              child: Text(
                "(123)-456-7890",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.all(25),
                  child: FractionallySizedBox(
                    widthFactor: 0.5,
                    child: FlatButton(
                      child: Text(
                        'Link Payment Account',
                        style: TextStyle(fontSize: 30.0),
                      ),
                      color: Colors.red,
                      textColor: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(25),
                  child: FractionallySizedBox(
                    widthFactor: 0.5,
                    child: FlatButton(
                      child: Text(
                        'Link Sales Account',
                        style: TextStyle(fontSize: 30.0),
                      ),
                      color: Colors.red,
                      textColor: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
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
              Icons.brightness_high,
              color: Colors.white,
            ),
            // label: 'Scan QR Code',
            title: Text(
              'High Contrast Mode',
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
            print("Toggling App theme");
            currentTheme.switchTheme();
          }
          if (index == 1) {
            print("Going to Homepage");
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => SplashPage(),
              ),
            );
          }
        },
      ),
    );
  }

  _showDialog(BuildContext context) {
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text('Submitting form')));
  }
}

class MyTheme with ChangeNotifier {
  static bool _isDark = false;

  ThemeMode currentTheme() {
    return _isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void switchTheme() {
    _isDark = !_isDark;
    notifyListeners();
  }
}
