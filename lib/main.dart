import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.green.shade600,
      appBar: AppBar(
        title: Text(
          "Dice Game",
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black54,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDicenumber = 2;
  int rightDicenumber = 5;

  void changeFace() {
    setState(() {
      leftDicenumber = Random().nextInt(6) + 1;
      rightDicenumber = Random().nextInt(6) + 1;
    });
  }

/*
  void leftDice() {
    setState(() {
      leftDicenumber = Random().nextInt(6) + 1;
    });
  }

  void rightDice() {
    setState(() {
      rightDicenumber = Random().nextInt(6) + 1;
    });
  }

These are the functions for changing the dice left & right it can be used instead of changeFace()
*/

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Row(
        children: [
          Expanded(
            /* //flex: 2, //  
             this is used for
             the expansion of the image ,in this case it will be a large one bez of flex size */
            child: InkWell(
              borderRadius: BorderRadius.circular(12.0),
              splashColor: Colors.red.shade800,
              onTap: changeFace,
              child: Image.asset("images/dice$leftDicenumber.png"),
            ),
          ),

          //
          SizedBox(
            width: 60,
          ),

          Expanded(
            /* //  flex: 1,
             // same with this one the image
            contained in this expanded will be small the ratio of both will be in value of 2:1  */
            child: InkWell(
              borderRadius: BorderRadius.circular(12.0),
              splashColor: Colors.yellow.shade800,
              onTap: changeFace,
              child: Image.asset("images/dice$rightDicenumber.png"),
            ),
          ),
        ],
      ),
    );
  }
}
