// import 'dart:math';

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Xylophone',
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'Pacifico',
            ),
          ),
          // backgroundColor: Colors.blue[800],
          centerTitle: true,
        ),
        body: Xylophone(),
      ),
    ),
  );
}

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  AudioCache audioCache = AudioCache();
  AudioPlayer advancedPlayer = AudioPlayer();

  Player(Color color, String note) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () => audioCache.play(note),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Player(Colors.red, 'note1.wav'),
        Player(Colors.yellow, 'note2.wav'),
        Player(Colors.green, 'note3.wav'),
        Player(Colors.teal[900], 'note4.wav'),
        Player(Colors.blue[900], 'note5.wav'),
        Player(Colors.purple, 'note6.wav'),
        Player(Colors.white, 'note7.wav'),
      ],
    );
  }
}
