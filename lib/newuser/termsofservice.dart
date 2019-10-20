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
              style: new TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 14.0,
                color: Colors.black,
              ),
              children: <TextSpan>[
                new TextSpan(text: 'Welcome to [[INSERT APP NAME HERE]]! \n\n', 
                             style: new TextStyle(color: generalBlueColor,
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold)),
                new TextSpan(text: 'By using this application, you agree to our Terms of Service listed below\n\n', 
                             style: new TextStyle(color: bforBlack,
                                                  fontSize: 15.0,
                                                  fontWeight: FontWeight.bold)),
                new TextSpan(text: 'Conditions of Use\n\n', 
                             style: new TextStyle(color: bforBlack,
                                                  fontSize: 15.0,
                                                  fontWeight: FontWeight.bold)),
                new TextSpan(text: 'We will provide their services to you, which are subject to the conditions '
                                   'stated below in this document. Every time you visit this website, use its '
                                   'services or make a purchase, you accept the following conditions. '
                                   'This is why we urge you to read them carefully.'
                                   'You are not allowed to spam party listings, create inappropriate content '
                                   'and content that are threatening. Basically just use the app to create a '
                                   'listing for a party that you are hosting or whatever like that ', 
                             style: new TextStyle(color: bforBlack,
                                                  fontSize: 10.0, )),
              new TextSpan(text: 'Private Policy\n\n', 
                           style: new TextStyle(color: bforBlack,
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold)),
              new TextSpan(text: 'Basically just dont\' post nothing that has sensitive or information '
                                  'you wanna keep private such as your credit card number and stuff.\n\n', 
                           style: new TextStyle(color: bforBlack,
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.bold)),
              new TextSpan(text: 'Copyright\n\n', 
                           style: new TextStyle(color: bforBlack,
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold)),
              new TextSpan(text: 'Content published on this application(digital downloads, images, texts, ' 
                                  'graphics, logos) is the property of the application and its content creators '
                                  'and protected by international copyright laws. The entire compilation of '
                                  'the content found on this application is the exclusive property of the '
                                  'application, with copyright authorship for this compilation by the application.\n\n', 
                           style: new TextStyle(color: bforBlack,
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.bold)),                              
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
