import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled37/constants.dart';
import 'package:untitled37/reusablecard.dart';
import 'package:untitled37/weightage.dart';

import 'iconcontent.dart';
import 'myhomepage.dart';

final activeColor = Colors.black12;
final pasiveColor = HexColor("eace67");
Color maleColor = activeColor;
Color femaleColor = pasiveColor;

double sliderValue = 160;

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("e9ead7"),
      appBar: AppBar(

        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("BMI CALCULATOR",style: TextStyle(fontWeight: FontWeight.normal,
                color: new Constants().textColor, fontFamily: "RammettoOne",
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
                myChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("HEIGHT",
                      style: TextStyle(fontSize: 25, fontFamily: "RammettoOne",
                          fontWeight: FontWeight.bold,
                          color: new Constants().textColor),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [

                      Text("${sliderValue.toInt()}",
                        style: TextStyle(fontSize: 80,
                            fontWeight: FontWeight.bold, fontFamily: "RammettoOne",
                            color: new Constants().textColor),
                      ),
                        Text("cm",
                          style: TextStyle(fontSize: 30, fontFamily: "RammettoOne",
                              fontWeight: FontWeight.bold,
                              color: new Constants().textColor),
                        ),
                      ]
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor:  Colors.redAccent,
                        activeTrackColor: Colors.redAccent,
                        thumbShape:
                        RoundSliderThumbShape(enabledThumbRadius:15),
                        overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30),
                      ),
                      child: Slider(
                        value: sliderValue,
                        min: 30,
                        max: 220,
                        onChanged: (double newValue)
                        {
                          setState((){});
                          sliderValue = newValue;
                         // print('$newValue');
                        },
                      ),
                    ),
                  ],
                ),
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
                child: ReusableCard(
                  height: 70,
                  color: Colors.orange,
                  myChild:
                  Center(child:  Text("Calculate",
                    style: TextStyle(fontSize: 20, fontFamily: "RammettoOne",
                        fontWeight: FontWeight.bold,
                        color: new Constants().textColor),
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
