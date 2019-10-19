import 'package:flutter/material.dart';
import './newuser/Start.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: "What's the Wave?",
      home: Start(),
      debugShowCheckedModeBanner: false,
    );
  }
}
