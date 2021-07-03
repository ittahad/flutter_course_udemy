import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int rand = 1;
  int rand2 = 1;
  int current = 0;

  var imageName = 'images/dice1.png';
  var imageName2 = 'images/dice1.png';
  void firstPlayerState(int player) {
    setState(() {
      rand = Random().nextInt(5) + 1;
      imageName = 'images/dice$rand.png';
    });
    hasWon(player);
  }

  void secondPlayerState(int player) {
    setState(() {
      rand2 = Random().nextInt(5) + 1;
      imageName2 = 'images/dice$rand2.png';
    });
    hasWon(player);
  }

  void hasWon(int player) {
    if (rand == rand2) {
      Fluttertoast.showToast(
          msg: "Player $player won",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Player 1",
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                  child: Image.asset(imageName),
                  onPressed: () => firstPlayerState(1),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Player 2',
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                  child: Image.asset(imageName2),
                  onPressed: () => secondPlayerState(2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
