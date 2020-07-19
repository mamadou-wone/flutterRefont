import 'package:TrainingApp/Picture.dart';
import 'package:TrainingApp/Weather.dart';
import 'package:flutter/material.dart';
import 'package:TrainingApp/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // GOOD

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Thioro(),
    );
  }
}

class Thioro extends StatefulWidget {
  @override
  _ThioroState createState() => _ThioroState();
}

class _ThioroState extends State<Thioro> {
  void thioro() {
    setState(() {
      scaffoldColor = Colors.red;
      text = 'Thioro tu doit chercher une puce 4G';
    });
  }

  Color color = Colors.red;
  String text = 'Bonjour je fais du Flutter';
  Color scaffoldColor = Colors.teal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 20.0),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.flash_on),
        onPressed: () {
          thioro();
        },
      ),
    );
  }
}
