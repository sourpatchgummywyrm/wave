import 'package:flutter/material.dart';
//import 'package:globe/global.dart';
//import 'Start.dart';

class Terms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
  /*
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: paleRedColor,
      body: new Center(
          child: new Text(
        "Terms of Service kjnskjnc..",
        style: reggie3,
      )),
    );
  }*/
}
/*
class FirstRoute extends State<Terms> {
  @override
  Widget build(BuildContext context) {
      body: Center(
        child: RaisedButton(
          child: Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}
*/
/*
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}*/
