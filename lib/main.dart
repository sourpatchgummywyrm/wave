import 'package:flutter/material.dart';
import 'package:globe/colors/colors.dart';
import 'package:globe/pages/landing_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(canvasColor: Colors.black54, primaryColorDark: first),
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}

