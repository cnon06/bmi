

import 'package:flutter/material.dart';

import 'constants.dart';
import 'main.dart';
import 'myhomepage.dart';

class Height extends StatefulWidget {
  const Height({Key? key}) : super(key: key);

  @override
  State<Height> createState() => _HeightState();
}

class _HeightState extends State<Height> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("HEIGHT",
          style: TextStyle(fontSize: 25, fontFamily: "RammettoOne",
              fontWeight: FontWeight.bold,
              color: textColor),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [

              Text("${height.toInt()}",
                style: TextStyle(fontSize: 80,
                    fontWeight: FontWeight.bold, fontFamily: "RammettoOne",
                    color: textColor),
              ),
              Text("cm",
                style: TextStyle(fontSize: 30, fontFamily: "RammettoOne",
                    fontWeight: FontWeight.bold,
                    color: textColor),
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
            value: height,
            min: 30,
            max: 220,
            onChanged: (double newValue)
            {
              setState((){});
              height = newValue;
              //height = sliderValue;
              // print('$newValue');
            },
          ),
        ),
      ],
    );
  }
}
