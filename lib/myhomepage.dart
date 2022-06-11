import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled37/constants.dart';
import 'package:untitled37/detailspage.dart';
import 'package:untitled37/height.dart';
import 'package:untitled37/reusablecard.dart';
import 'package:untitled37/weightage.dart';

import 'iconcontent.dart';
import 'main.dart';
import 'myhomepage.dart';






class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



 // int weight=50;
 // int age=50;


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: HexColor("e9ead7"),
      appBar: AppBar(

        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("BMI CALCULATOR",style: TextStyle(fontWeight: FontWeight.normal,
                color: textColor, fontFamily: "RammettoOne",
            fontSize: 25
            ),
            )
          ],
        ),
      ),
      body:
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/fitness.jpg"),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
          ),

        ),
        child:  Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

               Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        height: 120,
                        color: HexColor("AAeace67"),
                        myChild: GestureDetector(
                            onTap: ()
                            {
                              setState((){});
                              maleColor = activeColor;
                              femaleColor = pasiveColor;
                              gender="Male";
                            },
                            child: IconContent(icon: FontAwesomeIcons.mars,
                                color: maleColor,
                            )
                        ),
                      ),
                    ),

                   Expanded(
                     child:  ReusableCard(
                       height: 120,
                       color: HexColor("AAeace67"),
                       myChild:  GestureDetector(
                           onTap: ()
                           {
                             setState((){});
                             maleColor = pasiveColor;
                             femaleColor = activeColor;
                             gender="Female";
                           },
                           child: IconContent(icon: FontAwesomeIcons.venus, color: femaleColor)
                       ),
                     ),
                   ),

                  ],
                ),

              ReusableCard(
                height: 280,
                color: HexColor("AAeace67"),
                myChild: Height(),
              ),

              Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      height: 170,
                      color: HexColor("AAeace67"),
                      myChild:WeightAge(
                        cmKg: "kg",
                        weightAge: "WEIGHT",
                      ),


                    ),
                  ),

                  Expanded(
                    child:  ReusableCard(
                      height: 170,
                      color: HexColor("AAeace67"),
                      myChild:  WeightAge(
                        cmKg: "",
                        weightAge: "AGE",
                      ),
                    ),
                  ),

                ],
              ),

              Expanded(
                child: GestureDetector(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage()));
                   // print('weight: $weight');
                   // print('age: $age');
                  },
                  child: ReusableCard(
                    height: 70,
                    color: Colors.orange,
                    myChild:
                    Center(child:  Text("Calculate",
                      style: TextStyle(fontSize: 20, fontFamily: "RammettoOne",
                          fontWeight: FontWeight.bold,
                          color: textColor),
                    ),
                    ),

                  ),
                ),
              ),

            ],
          ),
        ),

      ),

    );


  }
}
