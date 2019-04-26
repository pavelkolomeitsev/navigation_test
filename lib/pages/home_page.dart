import 'package:flutter/material.dart';
import 'dart:math';

import './second_page.dart';

class HomePage extends StatelessWidget {
  String _generateLuckyNumber() {
    var randomNumber = new Random();

    String luckyNumber = "${randomNumber.nextInt(31)}";

    return luckyNumber;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home page"),
      ),
      backgroundColor: Colors.green[700],
      body: new Center(
        child: new Text(
          "What is your lucky number?",
          style: new TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(
          Icons.arrow_forward,
          size: 35.0,
        ),
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    new SecondPage(_generateLuckyNumber()))),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
