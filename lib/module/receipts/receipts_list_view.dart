import 'package:flutter/material.dart';
import 'package:qrpay_app/widget/drawer.dart';
import 'receipt_data.dart';
import 'package:qrpay_app/module/wrapper.dart';

class ReceiptsPage extends StatelessWidget {
  static const String routeName = '/receipts';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Receipts"),
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
      floatingActionButton: FloatingActionButton(
        tooltip: 'Click it to return to the Homepage',
        hoverElevation: 50,
        onPressed: () {
          print("Going back to homepage");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => Wrapper(),
            ),
          );
        },
        child: Icon(Icons.home),
      ),
    );
  }
}
