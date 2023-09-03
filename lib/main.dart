import 'package:flutter/material.dart';

import 'Dice.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.green.shade300,
      appBar: AppBar(
        title: const Text(
          "Dice Roller",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.grey.shade800,
      ),
      body: const DicePage(),
    ),
  ));
}
