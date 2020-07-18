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
      home: Meteo(),
    );
  }
}
