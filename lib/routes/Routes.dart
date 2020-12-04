import 'package:qrpay_app/module/wrapper.dart';
import 'package:qrpay_app/module/home/home_view.dart';
import 'package:qrpay_app/module/buy/buy_list_view.dart';
import 'package:qrpay_app/module/sell/sell_list_view.dart';
import 'package:qrpay_app/module/shop/shop_list_view.dart';
import 'package:qrpay_app/module/qr/qr_view.dart';
import 'package:qrpay_app/module/account/account_list_view.dart';
import 'package:qrpay_app/module/contact/contact_list_view.dart';
import 'package:qrpay_app/module/help/help_list_view.dart';
import 'package:qrpay_app/module/receipts/receipts_list_view.dart';


class Routes {
  static const String wrapper = Wrapper.routeName;
  static const String home = HomePage.routeName;
  static const String buy = BuyPage.routeName;
  static const String sell = SellPage.routeName;
  static const String shop = ShopPage.routeName;
  static const String qr = QRPage.routeName;
  static const String account = AccountPage.routeName;
  static const String contact = ContactPage.routeName;
  static const String help = HelpPage.routeName;
  static const String receipts = ReceiptsPage.routeName;
}