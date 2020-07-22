import 'package:TrainingApp/CountrieCases.dart';
import 'package:TrainingApp/Covid.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // GOOD

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FriendlyChat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: CountrieCases(),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold();
}
