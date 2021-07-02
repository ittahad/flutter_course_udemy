import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text('About'),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1624986708679-0371462d6572?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80'),
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5.0,
                sigmaY: 5.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 52.0,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage('images/akash.jpeg')),
                  ),
                  Text(
                    'Ittahad Uz Zaman',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontFamily: 'Pacifico',
                    ),
                  ),
                  Text(
                    'SOFTWARE ENGINEER',
                    style: TextStyle(
                      color: Colors.deepOrange[100],
                      fontFamily: 'SourceSansPro',
                      letterSpacing: 2.0,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                    width: 120.0,
                    child: Divider(
                      color: Colors.grey[500],
                    ),
                  ),
                  Card(
                    elevation: 5.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.grey[900],
                      ),
                      title: Text(
                        '+880 1700000000',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[900],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.grey[900],
                      ),
                      title: Text(
                        'mittahad@gmail.com',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[900],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "www.ittahad.xyz",
                      style: TextStyle(
                        color: Colors.grey[100],
                        fontFamily: 'SourceSansPro',
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
