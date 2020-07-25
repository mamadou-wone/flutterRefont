import 'package:TrainingApp/CountrieCases.dart';
import 'package:TrainingApp/Covid.dart';
import 'package:TrainingApp/Intro.dart';
import 'package:TrainingApp/Favories.dart';
import 'package:TrainingApp/Post.dart';
import 'package:TrainingApp/test.dart';
import 'package:TrainingApp/homePage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // GOOD

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
                child: new SplashScreen(
                    seconds: 5,
                    navigateAfterSeconds: new HomePage(),
                    title: new Text(
                      'Vroom Vroom',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    backgroundColor: Colors.blueGrey[600],
                    styleTextUnderTheLoader: new TextStyle(),
                    loaderColor: Colors.white),
                type: PageTransitionType.rightToLeft);
            break;
          case "/home":
            return PageTransition(
                child: HomePage(), type: PageTransitionType.fade);
            break;
          case "/test":
            return PageTransition(
                child: Favories(), type: PageTransitionType.fade);
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
