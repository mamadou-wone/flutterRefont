import 'package:TrainingApp/services/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          backgroundColor: Colors.brown[300],
          title: Text('Brew Crew'),
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: Text(
                'Log out',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () async {
                await _auth.signOut();
              },
            )
          ],
        ),
      ),
    );
  }
}
