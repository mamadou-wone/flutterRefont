import 'package:flutter/material.dart';

class CustumAppBar extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext context;
  final double heightScreen;
  final double widthScreen;
  final double appBarHeight;
  final double appBarWidth;
  final double appBarLogoHidth;
  final double appBarIconHeight;

  CustumAppBar(
      {@required this.context,
      @required this.widthScreen,
      @required this.heightScreen,
      this.appBarHeight = 0.075,
      this.appBarWidth = 1,
      this.appBarLogoHidth = 0.038,
      this.appBarIconHeight = 0.038});

  @override
  Widget build(BuildContext context) {
    double logoSize = this.heightScreen * this.appBarLogoHidth;
    double iconSize = this.heightScreen * this.appBarIconHeight;
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.blueGrey[600],
      title: Text('Vroom Vroom',
          style: TextStyle(color: Colors.white, fontSize: 22.0)),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
              size: iconSize,
            ),
            onPressed: null),
      ],
    );
  }

  @override
  Size get preferredSize =>
      Size(widthScreen * appBarWidth, heightScreen * appBarHeight);
}
