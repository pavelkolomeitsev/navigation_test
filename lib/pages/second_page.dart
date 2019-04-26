import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String luckyNumber;

  SecondPage(this.luckyNumber);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Second page"),
        ),
        backgroundColor: Colors.amber[300],
        body: new Center(
          child: new Text(
            "Your lucky number is: $luckyNumber",
            style: new TextStyle(fontSize: 30.0),
          ),
        ));
  }
}
