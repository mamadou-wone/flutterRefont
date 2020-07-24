import 'package:TrainingApp/CustumWidgets/CustumBottomBar.dart';
import 'package:flutter/material.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit),
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.pushReplacementNamed(context, "/home");
        },
      ),
    );
  }
}
