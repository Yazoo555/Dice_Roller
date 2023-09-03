// ignore: file_names
import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  const DicePage({super.key});
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDicenumber = 7;
  int rightDicenumber = 8;

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
      padding: const EdgeInsets.all(65),
      alignment: Alignment.center,
      child: Column(
        children: [
          Expanded(
            /* //flex: 2, //  
             this is used for
             the expansion of the image ,in this case it will be a large one bez of flex size */
            child: InkWell(
              borderRadius: BorderRadius.circular(10.0),
              splashColor: Colors.red.shade800,
              onTap: changeFace,
              child: Image.asset(
                "images/dice$leftDicenumber.png",
              ),
            ),
          ),

          //
          const SizedBox(
            height: 70,
            child: Divider(
              thickness: 0.5,
              color: Colors.black38,
            ),
          ),

          Expanded(
            /* //  flex: 1,
             // same with this one the image
            contained in this expanded will be small the ratio of both will be in value of 2:1  */
            child: InkWell(
              borderRadius: BorderRadius.circular(10.0),
              splashColor: Colors.blue.shade800,
              onTap: changeFace,
              child: Image.asset("images/dice$rightDicenumber.png"),
            ),
          ),
        ],
      ),
    );
  }
}
