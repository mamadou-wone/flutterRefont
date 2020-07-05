import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  List<String> DiceNumber = [
    'dice1.png',
    'dice2.png',
    'dice3.png',
    'dice4.png',
    'dice5.png',
    'dice6.png'
  ];

  var diceNumberGenerate = new Random();
  var diceNumberGenerate2 = new Random();

  String diceImage = 'dice1.png';
  String diceImage2 = 'dice1.png';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: GestureDetector(
        child: Row(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(10.0)),
            Expanded(
              child: Image.asset('images/' + diceImage),
            ),
            Padding(padding: EdgeInsets.all(5.0)),
            Expanded(
              child: Image.asset('images/' + diceImage2),
            ),
          ],
        ),
        onTap: () {
          setState(() {
            diceImage = DiceNumber[diceNumberGenerate.nextInt(6)];
            diceImage2 = DiceNumber[diceNumberGenerate2.nextInt(6)];
          });
        },
      )),
    );
  }
}
