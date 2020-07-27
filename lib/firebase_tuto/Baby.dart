import 'package:flutter/material.dart';

class Baby extends StatefulWidget {
  @override
  _BabyState createState() => _BabyState();
}

class _BabyState extends State<Baby> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[700],
        centerTitle: true,
        title: Text(
          'BabyBoom',
          style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        actions: <Widget>[
          Icon(
            Icons.settings,
            color: Colors.white,
            size: 25.0,
          )
        ],
      ),
    );
  }
}
