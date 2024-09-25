import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[800],
        appBar: AppBar(
          elevation: 5.0,
          shadowColor: Colors.black,
          backgroundColor: Colors.grey[900],
          centerTitle: true,
          title: const Text(
            "Dicee",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void rollDice(){
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: IconButton(
            onPressed: () {
              setState(() {
                rollDice();
              });
            },
            icon: Image.asset('images/dice$leftDiceNumber.png'),
          )),
          Expanded(
              child: IconButton(
            onPressed: () {
              setState(() {
                rollDice();
              });
            },
            icon: Image.asset('images/dice$rightDiceNumber.png'),
          )),
        ],
      ),
    );
  }
}
