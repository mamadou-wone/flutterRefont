import 'package:flutter/material.dart';

import 'CustumWidgets/CustumAppBar.dart';
import 'CustumWidgets/CustumBottomBar.dart';
import 'CustumWidgets/CustumButton.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustumAppBar(
        context: context,
        widthScreen: screenWidth,
        heightScreen: screenHeigth,
      ),
      floatingActionButton: CustumButton(onPressed: () {}),
      bottomNavigationBar: CustomBottomBar(
          context: context,
          heightScrenn: screenHeigth,
          widthScreen: screenWidth),
      body: Center(
        child: Text(
          'HOME PAGE',
          style: TextStyle(fontSize: 30.0),
        ),
      ),
    );
  }
}
