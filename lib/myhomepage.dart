import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled37/reusablecard.dart';

import 'iconcontent.dart';
import 'myhomepage.dart';

final activeColor = Colors.black12;
final pasiveColor = HexColor("eace67");
Color maleColor = activeColor;
Color femaleColor = pasiveColor;


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
                color: Colors.black38, fontFamily: "RubikMoonrocks",
            fontSize: 30
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
            mainAxisAlignment: MainAxisAlignment.center,
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
                             // print('male');
                              maleColor = activeColor;
                              femaleColor = pasiveColor;
                            },
                            child: IconContent(icon: FontAwesomeIcons.mars, color: maleColor)
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
                            // print('female');
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
                myChild: Text("2"),
              ),

              Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      height: 170,
                      color: HexColor("AAeace67"),
                      myChild: Text("2"),
                    ),
                  ),

                  Expanded(
                    child:  ReusableCard(
                      height: 170,
                      color: HexColor("AAeace67"),
                      myChild:  Text("2"),
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black45),
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
