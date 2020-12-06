import 'package:flutter/material.dart';
import 'package:qrpay_app/widget/drawer.dart';
// import 'package:qrpay_app/module/splash/splash_view.dart';
import 'package:qrpay_app/widget/calculator_button.dart';
import 'package:qrpay_app/module/wrapper.dart';

class SellPage extends StatefulWidget {
  static const String routeName = '/sell';

  @override
  _SellPageState createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  @override
  void initState() {
    super.initState();
  }

  double total;
  @override
  Widget build(BuildContext context) {
    String text;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Sell")),
        actions: [
          IconButton(
            icon: Image.asset('res/images/qplogo.png'),
            onPressed: () {},
          ),
        ],
        elevation: 30.0,
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.white,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(24),
                child: Text(
                  'Enter Sale Amount',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 34,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.white,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(24),
                child: Text(
                  'here amount will come',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 34,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    label: '1',
                    onTap: () => {numberPressed(1)},
                    size: 90,
                    backgroundColor: Colors.red,
                    labelColor: Colors.white,
                  ),
                  CalculatorButton(
                    label: '2',
                    onTap: () => {numberPressed(2)},
                    size: 90,
                    backgroundColor: Colors.red,
                    labelColor: Colors.white,
                  ),
                  CalculatorButton(
                    label: '3',
                    onTap: () => {numberPressed(3)},
                    size: 90,
                    backgroundColor: Colors.red,
                    labelColor: Colors.white,
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    label: '4',
                    onTap: () => {numberPressed(4)},
                    size: 90,
                    backgroundColor: Colors.red,
                    labelColor: Colors.white,
                  ),
                  CalculatorButton(
                    label: '5',
                    onTap: () => {numberPressed(5)},
                    size: 90,
                    backgroundColor: Colors.red,
                    labelColor: Colors.white,
                  ),
                  CalculatorButton(
                    label: '6',
                    onTap: () => {numberPressed(6)},
                    size: 90,
                    backgroundColor: Colors.red,
                    labelColor: Colors.white,
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    label: '7',
                    onTap: () => {numberPressed(7)},
                    size: 90,
                    backgroundColor: Colors.red,
                    labelColor: Colors.white,
                  ),
                  CalculatorButton(
                    label: '8',
                    onTap: () => {numberPressed(8)},
                    size: 90,
                    backgroundColor: Colors.red,
                    labelColor: Colors.white,
                  ),
                  CalculatorButton(
                    label: '9',
                    onTap: () => {numberPressed(9)},
                    size: 90,
                    backgroundColor: Colors.red,
                    labelColor: Colors.white,
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    label: '0',
                    onTap: () => {numberPressed(0)},
                    size: 90,
                    backgroundColor: Colors.red,
                    labelColor: Colors.white,
                  ),
                ],
              ),
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

numberPressed(int number) {}
