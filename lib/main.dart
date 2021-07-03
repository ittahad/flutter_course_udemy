import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          'Ask me anything',
        ),
      ),
      body: Ball(),
      backgroundColor: Colors.blue,
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int selectedRandNumber = 1;
  String ballImage = 'images/ball5.png';

  void showRandomMsg() {
    var rand = Random().nextInt(4) + 1;
    setState(() {
      selectedRandNumber = rand;
      ballImage = 'images/ball$selectedRandNumber.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          onPressed: () => showRandomMsg(),
          child: Image.asset(
            ballImage,
          ),
        ),
      ),
    );
  }
}
