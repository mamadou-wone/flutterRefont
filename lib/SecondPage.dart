import 'package:TrainingApp/CustumWidgets/CustumBottomBar.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      bottomNavigationBar: CustomBottomBar(
          context: context,
          heightScrenn: screenHeigth,
          widthScreen: screenWidth),
      body: Center(
        child: Text('Second Page'),
      ),
    );
  }
}
