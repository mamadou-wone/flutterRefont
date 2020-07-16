import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('MWONE'),
            Text(
              'lorem ipsum dolor sit amet, consectetur adipiscing elit. integer posuere erat a ante traduction',
              style: TextStyle(fontSize: 20.0),
            ),
            Row(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(25.0)),
                    Icon(
                      Icons.star,
                      color: Colors.teal,
                      size: 25.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.teal,
                      size: 25.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.teal,
                      size: 25.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.teal,
                      size: 25.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.teal,
                      size: 25.0,
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(20.0)),
                Text('Nouveau Text'),
              ],
            ),
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(20.0)),
                    Icon(Icons.home),
                    Row(
                      children: <Widget>[
                        Text('Text1'),
                        Icon(Icons.access_alarm),
                      ],
                    ),
                    Text('Text2'),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(20.0)),
                    Icon(Icons.home),
                    Row(
                      children: <Widget>[
                        Text('Text1'),
                        Icon(Icons.access_alarm),
                      ],
                    ),
                    Text('Text2'),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(20.0)),
                    Icon(Icons.home),
                    Row(
                      children: <Widget>[
                        Text('Text1'),
                        Icon(Icons.access_alarm),
                      ],
                    ),
                    Text('Text2'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
