import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            'I  Am  Poor',
            style: TextStyle(fontFamily: "Qahiri", fontSize: 40),
          )),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        backgroundColor: Colors.blueGrey,
        body: Stack(children: <Widget>[
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            Image(
              image: AssetImage('images/brokeman.jpg'),
            ),
            Image(
              image: AssetImage('images/coding.jpg'),
            ),
          ]),
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 90, 0, 0),
              child: Text(
                'but, I love to code',
                style: TextStyle(
                  fontFamily: "Caveat",
                  fontSize: 40,
                  color: Colors.deepOrangeAccent,
                ),
              ),
            ),
          ),
        ]),
      ),
    ),
  );
}
