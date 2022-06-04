import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';


//final activeColor = Colors.blue;
//final pasiveColor = Colors.red;


class IconContent extends StatefulWidget {
  IconData icon;
 // bool gender;
  Color color;
 // Color  maleColor = Colors.green;
 // Color femaleColor = Colors.green;



  IconContent({required this.icon, required this.color});

  @override
  State<IconContent> createState() => _IconContentState();
}

class _IconContentState extends State<IconContent> {

  @override
  Widget build(BuildContext context) {
  // maleColor = Colors.green;
 // femaleColor = Colors.green;

    return Card(
      color: widget.color,
      // color:  widget.gender? maleColor : femaleColor,
      child: Icon(  widget.icon, //FontAwesomeIcons.mars,
        color:  Colors.black54,
        size: 80,
      ),
    );
  }
}




