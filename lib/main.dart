import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  generateKey(int num, MaterialColor color) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        onPressed: () {
          final audio = AudioCache();
          audio.play('note$num.wav');
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              generateKey(1, Colors.red),
              generateKey(2, Colors.orange),
              generateKey(3, Colors.yellow),
              generateKey(4, Colors.lightGreen),
              generateKey(5, Colors.green),
              generateKey(6, Colors.blue),
              generateKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
