import 'dart:math';
import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  final List<String> diceImages = [
    'assets/images/diceFace1.png',
    'assets/images/diceFace2.png',
    'assets/images/diceFace3.png',
    'assets/images/diceFace4.png',
    'assets/images/diceFace5.png',
    'assets/images/diceFace6.png',
  ];

  String leftDiceImage = 'assets/images/diceFace1.png';
  String rightDiceImage = 'assets/images/diceFace2.png';

  void rollDice() {
    final random = Random();
    setState(() {
      leftDiceImage = diceImages[random.nextInt(6)];
      rightDiceImage = diceImages[random.nextInt(6)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Roll The Dices"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                leftDiceImage,
                width: 150,
                height: 150,
              ),
              const SizedBox(width: 20),
              Image.asset(
                rightDiceImage,
                width: 150,
                height: 150,
              ),
            ],
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: rollDice,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              textStyle: const TextStyle(fontSize: 20),
            ),
            child: const Text('Roll Dice'),
          ),
        ],
      ),
    );
  }
}
