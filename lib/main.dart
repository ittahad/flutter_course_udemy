import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  width: 200,
                  height: 300,
                  image: AssetImage('images/Supermanflying.png'),
                ),
                Container(
                  child: Transform.scale(
                    scale: 0.5,
                    child: Stack(children: <Widget>[
                      Image(
                        width: 250,
                        height: 250,
                        color: Colors.red,
                        image: AssetImage('images/diamond.png'),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(25, 25, 0, 0),
                        child: Image(
                          width: 200,
                          height: 200,
                          color: Colors.amberAccent,
                          image: AssetImage('images/diamond.png'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(82, 40, 0, 0),
                        child: Text(
                          "S",
                          style: TextStyle(fontSize: 150, color: Colors.red),
                        ),
                      ),
                    ]),
                  ),
                ),
              ]),
        ),
      ),
    ),
  );
}
