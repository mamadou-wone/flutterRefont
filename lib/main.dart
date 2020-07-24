import 'package:TrainingApp/CountrieCases.dart';
import 'package:TrainingApp/Covid.dart';
import 'package:TrainingApp/Intro.dart';
import 'package:TrainingApp/SecondPage.dart';
import 'package:TrainingApp/Test.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

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
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "/":
            return PageTransition(
                child: Intro(), type: PageTransitionType.fade);
            break;
          case "/home":
            return PageTransition(child: Test(), type: PageTransitionType.fade);
            break;
          case "/test":
            return PageTransition(child: Test(), type: PageTransitionType.fade);
            break;
          default:
            return null;
        }
      },
    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold();
}
