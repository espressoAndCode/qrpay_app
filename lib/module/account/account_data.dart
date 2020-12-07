import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class AccountData extends StatefulWidget {
  @override
  _AccountDataState createState() => _AccountDataState();
}

class _AccountDataState extends State<AccountData> {
  @override
  Widget build(BuildContext context) {
    final userData = Provider.of<QuerySnapshot>(context);
    print("Context: ${context}");
    // print(userData.docs);
    // ignore: deprecated_member_use
    for (var doc in userData.docs) {
      print(doc.toString() );
    }

    return Container();
  }
}
