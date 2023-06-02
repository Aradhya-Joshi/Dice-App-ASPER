import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Dice',
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int d1 = 1;
  int d2 = 1;

  void roll(){
    setState(() {
      d1 = Random().nextInt(6) + 1;
      d2 = Random().nextInt(6) + 1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: MaterialButton(
                  onPressed: () {
                    roll();
                    },
                  child: Image.asset('images/dice$d1.png'),
              ),
          ),
          const SizedBox(
            width: 3.0,
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {
                roll();
                },
              child: Image.asset('images/dice$d2.png'),
            ),),
        ],
      ),
    );
  }
}

