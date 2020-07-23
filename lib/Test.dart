import 'package:TrainingApp/CustumButton.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vroom Vroom'),
        centerTitle: true,
        leading: Icon(Icons.share),
        backgroundColor: Colors.blueGrey[600],
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: null),
        ],
      ),
      floatingActionButton: CustumButton(
        onPressed: () {
          print('test');
        },
      ),
    );
  }
}
