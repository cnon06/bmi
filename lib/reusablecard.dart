import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';


class ReusableCard extends StatelessWidget {

  //Color color= HexColor("AAeace67");
  Color color;
  double height;
  //String text = "Inherited Class";
  //double height = 170;
  final Widget myChild;
  ReusableCard({required this.myChild, required this.color, required this.height});


  @override
  Widget build(BuildContext context) {

    return   Container(

     // width: MediaQuery. of(context). size. width,
      height: height,
      margin: EdgeInsets.all(10.0),
      //padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: color,
          border: Border.all(color: Colors.black12, width:3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: myChild,

    );
  }
}
