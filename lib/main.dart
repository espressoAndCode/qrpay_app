import 'package:flutter/material.dart';
import 'package:qrpay_app/routes/Routes.dart';
import 'module/splash/splash_view.dart';
import 'module/buy/buy_list_view.dart';
import 'module/sell/sell_list_view.dart';
import 'module/shop/shop_list_view.dart';
import 'module/account/account_list_view.dart';
import 'module/contact/contact_list_view.dart';
import 'module/help/help_list_view.dart';
import 'module/receipts/receipts_list_view.dart';
import 'module/about us/about_us_view.dart';

import 'module/qr/qr_view.dart';

void main() {
  runApp(new MaterialApp(
    title: 'QRPAY Touch-Free',
    theme: new ThemeData(primarySwatch: Colors.red),
    home: SplashPage(),
    routes: {
      Routes.splash: (context) => SplashPage(),
      Routes.buy: (context) => BuyPage(),
      Routes.sell: (context) => SellPage(),
      Routes.shop: (context) => ShopPage(),
      Routes.qr: (context) => QRPage(),
      Routes.account: (context) => AccountPage(),
      Routes.contact: (context) => ContactPage(),
      Routes.help: (context) => HelpPage(),
      Routes.receipts: (context) => ReceiptsPage(),
      Routes.about_us: (context) => AboutUsPage(),
    },
  ));
}
