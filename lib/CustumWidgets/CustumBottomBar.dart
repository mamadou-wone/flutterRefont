import 'package:flutter/material.dart';

import '../Test.dart';

class CustomBottomBar extends StatefulWidget {
  final BuildContext context;
  final double heightScrenn;
  final double widthScreen;
  final double
      appBarHeight; //Coeficient que je définit pour calculer la hauteur en fonction de l'ecran
  final double appBarWidth;
  final double appBarIconHeigth;
  final double appBarBorderHeigth; //Hauteur de ma séparation

  CustomBottomBar(
      {@required this.context,
      @required this.heightScrenn,
      @required this.widthScreen,
      this.appBarHeight = 0.0874,
      this.appBarWidth = 1,
      this.appBarIconHeigth = 0.04,
      this.appBarBorderHeigth = 0.01});

  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          Navigator.pushReplacementNamed(context, "/home");
          break;
        case 1:
          Navigator.pushReplacementNamed(context, "/test");
          break;
        // default:
      }
    });
  }

  Widget buildTopBorder() {
    return Container(
      height: this.widget.heightScrenn * this.widget.appBarBorderHeigth,
      width: this.widget.widthScreen * this.widget.appBarWidth,
      color: Colors.grey[300],
    );
  }

  Widget buildIconsRow() {
    double rowHeight = this.widget.heightScrenn * this.widget.appBarHeight -
        this.widget.heightScrenn * this.widget.appBarBorderHeigth;
    double iconSize = this.widget.heightScrenn * this.widget.appBarIconHeigth;

    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          title: Text('Favories'),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.widget.heightScrenn * this.widget.appBarHeight,
      width: this.widget.widthScreen * this.widget.appBarWidth,
      child: Column(
        children: <Widget>[
          buildTopBorder(),
          buildIconsRow(),
        ],
      ),
    );
  }
}
