import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrpay_app/module/authenticate/authenticate_view.dart';
import 'home/home_view.dart';
import 'package:qrpay_app/module/account/user.dart';

class Wrapper extends StatelessWidget {
  static const String routeName = '/wrapper';

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    if (user == null) {
      return Authenticate();
    } else {
      return HomePage();
    }
  }
}
