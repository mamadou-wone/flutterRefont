import 'package:flutter/material.dart';

class CustumButton extends StatelessWidget {
  CustumButton({@required this.onPressed});
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 29.0),
      child: RawMaterialButton(
        highlightElevation: 5.0,
        fillColor: Colors.redAccent[400],
        splashColor: Colors.red[500],
        shape: StadiumBorder(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              Icon(
                Icons.time_to_leave,
                color: Colors.white,
              ),
              SizedBox(
                width: 8.0,
              ),
              Text('Publier une annonce',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
