


import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled37/reusablecard.dart';

import 'constants.dart';

class DetailsPage extends StatelessWidget {



  DetailsPage();

  @override
  Widget build(BuildContext context) {

   double bmi = weight/pow (height/100,2) ;

   String outcome="";
   if(bmi<18) outcome = "Underweight";
   else if (bmi<25) outcome = "Normal Weight";
   else if (bmi<30) outcome = "Overweight";
   else  outcome = "Obese";


    return Scaffold(

      /*
       appBar: AppBar(
        title: Text("Details Page"),
      ),
       */

      body: Container(
      decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage("images/fitness.jpg"),
    fit: BoxFit.cover,
    colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
    ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Center(child:
      ReusableCard(
      height: 280,
        color: HexColor("AAeace67"),
        myChild: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,

            children:[


              Center(
                child: Text("Height: ${height.toStringAsFixed(0)}",
                  style: TextStyle(fontSize: 20, fontFamily: "RammettoOne",
                      fontWeight: FontWeight.bold,
                      color: textColor),
                ),
              ),
              Center(
                child: Text("Weight: $weight",
                  style: TextStyle(fontSize: 20, fontFamily: "RammettoOne",
                      fontWeight: FontWeight.bold,
                      color: textColor),
                ),
              ),

              Center(
                child: Text("BMI: ${bmi.toStringAsFixed(2)}",
                  style: TextStyle(fontSize: 20, fontFamily: "RammettoOne",
                      fontWeight: FontWeight.bold,
                      color: textColor),
                ),
              ),
              Center(
                child: Text("Gender: ${gender}",
                  style: TextStyle(fontSize: 20, fontFamily: "RammettoOne",
                      fontWeight: FontWeight.bold,
                      color: textColor),
                ),
              ),
              Center(
                child: Text("Age: ${age}",
                  style: TextStyle(fontSize: 20, fontFamily: "RammettoOne",
                      fontWeight: FontWeight.bold,
                      color: textColor),
                ),
              ),
              Center(
                child: Text("${outcome}",
                  style: TextStyle(fontSize: 30, fontFamily: "RammettoOne",
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
              ),
        ]

        )
      )
          ),

          GestureDetector(
            onTap: ()
            {
              //Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage()));
              Navigator.pop(context);
              // print('weight: $weight');
              // print('age: $age');
            },
            child: ReusableCard(
              height: 70,
              color: Colors.orange,
              myChild:
              Center(child:  Text("Recalculate",
                style: TextStyle(fontSize: 20, fontFamily: "RammettoOne",
                    fontWeight: FontWeight.bold,
                    color: textColor),
              ),
              ),

            ),
          ),


      ],


      )
      )
      //Text("Text1: ${new BmiFormula(height: height, weight: weight).calculate()}"),


    );
  }
}
