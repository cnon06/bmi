import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


            Row(
              children: [
                new ReusableCard(),
                new ReusableCard(),
              ],
            ),

            new ReusableCard(),

            Row(
              children: [
                new ReusableCardOrange(),
                new ReusableCard(),
              ],
            ),


          ],
        ),
      ),

    );
  }
}

class ReusableCard extends StatelessWidget {


  Color color = Colors.blue;
  String text = "Inherited Class";

  @override
  Widget build(BuildContext context) {
    return   Expanded(
      flex: 1,
      child: Container(
       width: MediaQuery. of(context). size. width,
        height: 200,
        margin: EdgeInsets.all(10.0),
        //padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: Text("$text", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),

      ),
    );
  }
}

class ReusableCardOrange extends ReusableCard {
  Color color = Colors.yellow;
  String text = "Class which inherits";

}

