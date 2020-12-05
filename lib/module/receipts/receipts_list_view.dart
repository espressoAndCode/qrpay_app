import 'package:flutter/material.dart';
import 'package:qrpay_app/widget/drawer.dart';
import 'receipt_data.dart';

class ReceiptsPage extends StatelessWidget {
  static const String routeName = '/receipts';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Receipts"),
        elevation: 30.0,
      ),
      drawer: AppDrawer(),
      body: Scrollbar(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 8),
          children: [
            for (int index = 1; index < 21; index++)
              ListTile(
                leading: ExcludeSemantics(
                  child: CircleAvatar(child: Text('$index')),
                ),
                title: Text(
                  'Publix',
                ),
                subtitle: Text('Groceries                 \$87.50'),
              ),
          ],
        ),
      ),
    );
  }
}
