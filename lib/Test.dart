import 'package:TrainingApp/CustumWidgets/CustumAppBar.dart';
import 'package:TrainingApp/CustumWidgets/CustumBottomBar.dart';
import 'package:TrainingApp/CustumWidgets/CustumButton.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  // int _selectedIndex = 0;

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

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
            widthScreen: screenWidth));
  }
}
