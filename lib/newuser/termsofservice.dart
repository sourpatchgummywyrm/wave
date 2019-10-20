import 'package:flutter/material.dart';
import 'package:globe/global.dart';

const PrimaryColor = const Color(0xFFEF9A9A);
var text; 
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
        body: text = new RichText(
            text: new TextSpan(
        // Note: Styles for TextSpans must be explicitly defined.
         // Child text spans will inherit styles from parent
              style: new TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
              children: <TextSpan>[
                new TextSpan(text: 'Hello'),
                new TextSpan(text: 'World', style: new TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        /*Text("By using this application, you agree to our terms" 
                   " of service.",
          style: TextStyle(
                    decoration: TextDecoration.none,
                    color: generalBlueColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
          )
        ),*/
      ),
    );
  }
}
