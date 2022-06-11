
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'main.dart';



class WeightAge extends StatefulWidget {



  WeightAge({required this.weightAge, required this.cmKg});

  String weightAge;
  String cmKg;

  @override
  State<WeightAge> createState() => _WeightAgeState();
}

class _WeightAgeState extends State<WeightAge> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("${widget.weightAge}",
          style: TextStyle(fontSize: 15, fontFamily: "RammettoOne",
              fontWeight: FontWeight.bold,
              color: textColor),

        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [

              Text("${widget.cmKg == "kg" ? weight : age}",
                style: TextStyle(fontSize: 25,
                    fontWeight: FontWeight.bold, fontFamily: "RammettoOne",
                    color: textColor),
              ),
              Text("${widget.cmKg}",
                style: TextStyle(fontSize: 15, fontFamily: "RammettoOne",
                    fontWeight: FontWeight.bold,
                    color: textColor),
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
                onPressed: ()
                {
                  widget.cmKg == "kg" ? weight-- : age--;
                  setState((){});
                },


                /*
                          (){
                    weight--;
                 //   setState((){});

                  }
                       */
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
                onPressed: ()
                {
                  widget.cmKg == "kg" ? weight++ : age++;
                  setState((){});
                },
              ),

            ]),

      ],
    );
  }
}


/*
class WeightAge extends StatelessWidget {

  String weightAge;
  String cmKg;
  Function onPrssPlus;
  Function onPrssMinus;
  int weight_age;

  WeightAge({required this.weightAge, required this.cmKg,
    required this.onPrssPlus, required this.onPrssMinus, required this.weight_age});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("${weightAge}",
          style: TextStyle(fontSize: 15, fontFamily: "RammettoOne",
              fontWeight: FontWeight.bold,
              color: new Constants().textColor),

        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [

              Text("$weight_age",
                style: TextStyle(fontSize: 25,
                    fontWeight: FontWeight.bold, fontFamily: "RammettoOne",
                    color: new Constants().textColor),
              ),
              Text("${cmKg}",
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
                  onPressed: () => onPrssMinus,
                /*
                          (){
                    weight--;
                 //   setState((){});

                  }
                       */
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
                  onPressed: () => onPrssPlus,
              ),

            ]),

      ],
    );
  }
}

 */



