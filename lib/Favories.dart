import 'package:TrainingApp/CustumWidgets/CustumAppBar.dart';
import 'package:TrainingApp/CustumWidgets/CustumBottomBar.dart';
import 'package:flutter/material.dart';

class Favories extends StatefulWidget {
  @override
  _FavoriesState createState() => _FavoriesState();
}

class _FavoriesState extends State<Favories> {
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
      bottomNavigationBar: CustomBottomBar(
          context: context,
          heightScrenn: screenHeigth,
          widthScreen: screenWidth),
      body: Center(
        child: Center(
          child: Text(
            'FAVORIES PAGE',
            style: TextStyle(fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}
