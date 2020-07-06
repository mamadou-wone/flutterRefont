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

  List<String> GirlName = [
    'Aisha',
    'Adji Ngoné',
    'Aita',
    'Zakha',
    'Nafi',
    'Nadio',
    'Mame Fatou',
    'Adama Faye',
    'Mami',
    'Coumba Tra',
    'Maty',
    'Bijou Fall',
    'Awa Cheikh',
    'Didi', //Quel nom de Ouf :)
    'Mame Diarra'
  ];

  List<String> ManOfThiadaraGangName = [
    'Big Driver',
    'Mégatron',
    'Badou Boy',
    'Elzo',
    'Laye Ndaw',
    'WONE'
  ];

  var diceNumberGenerate = new Random();
  var diceNumberGenerate2 = new Random();
  var girlNameGenerate = new Random();

  String diceImage = 'dice1.png';
  String diceImage2 = 'dice1.png';
  String manName = "MAN";
  String girlName = 'Girl';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    GestureDetector(
                      child: Text(
                        ManOfThiadaraGangName[0],
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Pacifico',
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          manName = ManOfThiadaraGangName[0];
                        });
                      },
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    GestureDetector(
                      child: Text(
                        ManOfThiadaraGangName[1],
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Pacifico',
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          manName = ManOfThiadaraGangName[1];
                        });
                      },
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    GestureDetector(
                      child: Text(
                        ManOfThiadaraGangName[2],
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Pacifico',
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          manName = ManOfThiadaraGangName[2];
                        });
                      },
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    GestureDetector(
                      child: Text(
                        ManOfThiadaraGangName[3],
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Pacifico',
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          manName = ManOfThiadaraGangName[3];
                        });
                      },
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    GestureDetector(
                      child: Text(
                        ManOfThiadaraGangName[4],
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Pacifico',
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          manName = ManOfThiadaraGangName[4];
                        });
                      },
                    ),
                  ],
                ),
                GestureDetector(
                  child: Text(
                    ManOfThiadaraGangName[5],
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pacifico',
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      manName = ManOfThiadaraGangName[5];
                    });
                  },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  child: Text(
                    manName,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pacifico',
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Container(
                  child: Text(
                    "->",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pacifico',
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Container(
                  child: Text(
                    girlName,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pacifico',
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(10)),
            GestureDetector(
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
                  print(girlName = GirlName[girlNameGenerate.nextInt(16)]);
                });
              },
            ),
            SizedBox(
              height: 80.0,
            ),
            FloatingActionButton(
              backgroundColor: Colors.teal,
              child: Icon(
                Icons.flash_on,
              ),
              onPressed: () {
                setState(() {
                  manName = 'MAN';
                  girlName = 'Girl';
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
