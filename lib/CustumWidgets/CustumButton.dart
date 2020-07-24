import 'package:flutter/material.dart';

class CustumButton extends StatelessWidget {
  CustumButton({@required this.onPressed});
  final GestureTapCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 30.0),
      child: RawMaterialButton(
        fillColor: Colors.redAccent[400],
        splashColor: Colors.deepOrange,
        shape: StadiumBorder(),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.time_to_leave,
                color: Colors.white,
              ),
              SizedBox(
                width: 8.0,
              ),
              Text(
                'Publier une annonce',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
