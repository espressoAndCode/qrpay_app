import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:qrpay_app/module/authenticate/authenticate_view.dart';
import 'home/home_view.dart';
    
class Wrapper extends StatelessWidget {
  static const String routeName = '/wrapper';
    @override
    Widget build(BuildContext context) {

      //return either Home or Authenticate widget
      // return HomePage();
      return Authenticate();
    }
  }
