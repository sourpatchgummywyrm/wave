import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFFEF9A9A);

class Terms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Terms of Service'),
          backgroundColor: PrimaryColor,
        ),
        body: new DefaultTextStyle(
          style: new TextStyle(
                inherit: true,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.wavy,
                color: Colors.blue),
              child: new Center(
                child: Text('By using this application, you agree to our terms '
                            'of service.'), 
          )  
        ),
      ),
    );
  }
}
