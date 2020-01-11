import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int chosen = 1;

  void randomise() {
    setState(() {
      chosen = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Magic balls"),
        ),
        body: Center(
          child: Container(
            child: FlatButton(
              onPressed: () => randomise(),
              child: Image.asset('images/ball$chosen.png'),
            ),
          ),
        ),
      ),
    );
  }
}
