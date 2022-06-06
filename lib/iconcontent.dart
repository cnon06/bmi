import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';


//final activeColor = Colors.blue;
//final pasiveColor = Colors.red;


class IconContent extends StatelessWidget {
  IconData icon;
  Color color;

  IconContent({required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,

      child: Icon(  icon,
        color:  Colors.black54,
        size: 80,
      ),
    );
  }
}


