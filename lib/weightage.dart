
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';



class WeightAge extends StatefulWidget {

  String weightAge;
  String cmKg;

  WeightAge({required this.weightAge, required this.cmKg});

  @override
  State<WeightAge> createState() => _WeightAgeState();
}

class _WeightAgeState extends State<WeightAge> {

  int weight =50;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("${widget.weightAge}",
          style: TextStyle(fontSize: 15, fontFamily: "RammettoOne",
              fontWeight: FontWeight.bold,
              color: new Constants().textColor),

        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [

              Text("$weight",
                style: TextStyle(fontSize: 25,
                    fontWeight: FontWeight.bold, fontFamily: "RammettoOne",
                    color: new Constants().textColor),
              ),
              Text("${widget.cmKg}",
                style: TextStyle(fontSize: 15, fontFamily: "RammettoOne",
                    fontWeight: FontWeight.bold,
                    color: new Constants().textColor),
              ),
            ]
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RawMaterialButton(
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),//CircleBorder(),
                  constraints: BoxConstraints.tightFor(
                    width: 50,
                    height: 50,
                  ),
                  fillColor: Colors.orange,
                  child:  Icon(
                    size: 30,
                    FontAwesomeIcons.minus,
                  ),
                  onPressed: (){
                    weight--;
                    setState((){});

                  }
                  ),


              SizedBox(width: 10,),

              RawMaterialButton(
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),//CircleBorder(),
                  constraints: BoxConstraints.tightFor(
                    width: 50,
                    height: 50,
                  ),
                  fillColor: Colors.orange,
                  child:  Icon(
                    size: 30,
                    FontAwesomeIcons.plus,
                  ),
                  onPressed: (){
                    weight++;
                    setState((){});

                  }),


            ]),

      ],
    );

  }
}


