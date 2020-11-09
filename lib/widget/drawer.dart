import 'package:flutter/material.dart';
import 'package:qrpay_app/routes/Routes.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(
              icon: Icons.house,
              text: 'Home',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.splash)),
          _createDrawerItem(
              icon: Icons.attach_money ,
              text: 'Buy',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.buy)),
          _createDrawerItem(
              icon: Icons.store,
              text: 'Sell',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.sell)),
          _createDrawerItem(
              icon: Icons.local_grocery_store,
              text: 'Shop',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.shop)),
          _createDrawerItem(
              icon: Icons.qr_code,
              text: 'QR Reader',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.qr)),
          Divider(),
          _createDrawerItem(
              icon: Icons.account_circle,
              text: 'Account',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.account)),
          _createDrawerItem(
              icon: Icons.receipt_long,
              text: 'Receipts',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.receipts)),
          _createDrawerItem(
              icon: Icons.help,
              text: 'Help',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.help)),
          _createDrawerItem(
              icon: Icons.contact_mail,
              text: 'Contact',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.contact)),

        ],
      ),
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('res/images/drawer_header_background.png'))
        ),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 60.0,
              child: Text("QRPAY Touch-Free",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,

                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
