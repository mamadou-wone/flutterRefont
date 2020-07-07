import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[400],
        appBar: AppBar(
          title: Text(
            'Magic Ball',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          backgroundColor: Colors.blue[800],
          centerTitle: true,
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  var magicBallNumber = 1;
  void MagicBallGenerate() {
    setState(() {
      magicBallNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: IconButton(
          icon: Image.asset('images/ball$magicBallNumber.png'),
          iconSize: 500,
          onPressed: () {
            setState(() {
              MagicBallGenerate();
            });
          },
        ),
      ),
    );
  }
}

// class DicePage extends StatefulWidget {
//   @override
//   _DicePageState createState() => _DicePageState();
// }

// class _DicePageState extends State<DicePage> {
//   List<String> DiceNumber = [
//     'dice1.png',
//     'dice2.png',
//     'dice3.png',
//     'dice4.png',
//     'dice5.png',
//     'dice6.png'
//   ];

//   var diceNumberGenerate = new Random();
//   var diceNumberGenerate2 = new Random();

//   String diceImage = 'dice1.png';
//   String diceImage2 = 'dice1.png';
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//           child: GestureDetector(
//         child: Row(
//           children: <Widget>[
//             Expanded(
//               child: Padding(
//                 child: Image.asset('images/' + diceImage),
//                 padding: EdgeInsets.all(15.0),
//               ),
//             ),
//             Expanded(
//               child: Padding(
//                 child: Image.asset('images/' + diceImage2),
//                 padding: EdgeInsets.all(15.0),
//               ),
//             ),
//           ],
//         ),
//         onTap: () {
//           setState(() {
//             diceImage = DiceNumber[diceNumberGenerate.nextInt(6)];
//             diceImage2 = DiceNumber[diceNumberGenerate2.nextInt(6)];
//           });
//         },
//       )),
//     );
//   }
// }
