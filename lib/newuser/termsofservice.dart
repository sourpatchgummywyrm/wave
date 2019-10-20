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
        backgroundColor: paleRedColor,
        appBar: AppBar(
          title: Text('Terms of Service'),
          centerTitle: true,
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
                new TextSpan(text: '\tWelcome to What\'s the Wave! \n\n', 
                             style: new TextStyle(color: generalBlueColor,
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold)),
                new TextSpan(text: 'By using this application, you agree to our Terms of Service listed below\n\n', 
                             style: new TextStyle(color: bforBlack,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.bold)),
                new TextSpan(text: '   Conditions of Use\n', 
                             style: new TextStyle(color: bforBlack,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.bold)),
                new TextSpan(text: 'We will provide their services to you, which are subject to the conditions '
                                   'stated below in this document. Every time you visit this website, use its '
                                   'services or make a purchase, you accept the following conditions. '
                                   'This is why we urge you to read them carefully.'
                                   'You are not allowed to spam party listings, create inappropriate content '
                                   'and content that are threatening. Basically just use the app to create a '
                                   'listing for a party that you are hosting or whatever like that.\n\n', 
                             style: new TextStyle(color: bforBlack,
                                                  fontSize: 5.0, )),
              new TextSpan(text: '   Private Policy\n', 
                           style: new TextStyle(color: bforBlack,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold)),
              new TextSpan(text: 'Basically just dont\' post nothing that has sensitive or information '
                                  'you wanna keep private such as your credit card number and stuff.\n\n', 
                           style: new TextStyle(color: bforBlack,
                                                fontSize: 5.0,)),
              new TextSpan(text: '   Copyright\n', 
                           style: new TextStyle(color: bforBlack,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold)),
              new TextSpan(text: 'Content published on this application(digital downloads, images, texts, ' 
                                  'graphics, logos) is the property of the application and its content creators '
                                  'and protected by international copyright laws. The entire compilation of '
                                  'the content found on this application is the exclusive property of the '
                                  'application, with copyright authorship for this compilation by the application.\n\n', 
                           style: new TextStyle(color: bforBlack,
                                                fontSize: 5.0,)),  
              new TextSpan(text: '   Communications\n', 
                           style: new TextStyle(color: bforBlack,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold)), 
              new TextSpan(text: 'The entire communication with the applicatoion is electronic. Every time ' 
                                 'you open our application, you are going to be communicating with the ' 
                                 'application. You hereby consent to receive communications from the application. '
                                 'The application will continue to communicate with you by posting news of parties '
                                 'on our application and by sending you emails. You also agree that all notices, '
                                 'disclosures, agreements and other communications the application provide to you '
                                 'electronically meet the legal requirements that such communications be in writing.\n\n', 
                           style: new TextStyle(color: bforBlack,
                                                fontSize: 5.0,)), 
              new TextSpan(text: '   Applicable Law\n', 
                           style: new TextStyle(color: bforBlack,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold)), 
              new TextSpan(text: 'By using this application, you agree that the laws of the \''
                                 'Murica, without regard to principles of conflict laws, will '
                                 'govern these terms of service, or any dispute of any sort that '
                                 'might come between the application and you, or its business '
                                 'partners and associates.\n\n', 
                           style: new TextStyle(color: bforBlack,
                                                fontSize: 5.0,)),    
              new TextSpan(text: '   Disputes\n', 
                           style: new TextStyle(color: bforBlack,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold)),
              new TextSpan(text: 'Any dispute related in any way to your using of this application '
                                 'or anything regarding this application shall be arbitrated by '
                                 'hand to hand combat with Aris Chung and you will not hold the  '
                                 'application liable for any injuries, physical or emotional, you '
                                 'may recieve. Please contact Aris Chung via smoke signal to resolve '
                                 'any disputes you have with this application. Create a code of two ' 
                                 'large smoke clouds and add ten pounds of poison ivy to the fire ' 
                                 'to contact Aris Chung that you wish to resolve a dispute regarding '
                                 ' this application \n\n', 
                           style: new TextStyle(color: bforBlack,
                                                fontSize: 5.0,)),
              new TextSpan(text: '   Comments, Reviews, and Emails\n', 
                           style: new TextStyle(color: bforBlack,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold)),
              new TextSpan(text: 'Confucious say: don\'t making the shit posting on this ' 
                                 'appricashion. \n\n',   
                           style: new TextStyle(color: bforBlack,
                                                fontSize: 5.0,)),  
              new TextSpan(text: '   User Accounts\n', 
                           style: new TextStyle(color: bforBlack,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold)),
              new TextSpan(text: 'If you are an owner of an account on this application, you are '
                                 'solely responsible for maintaining the confidentiality of your '
                                 'private user details (username and password). You are responsible '
                                 'for all activities that occur under your account or password. '
                                 'We reserve all rights to terminate accounts, edit or remove '
                                 'content and cancel listing in our sole discretion. \n\n',   
                           style: new TextStyle(color: bforBlack,
                                                fontSize: 5.0,)),
              ]
            ),
          ),
        ),
    );
  }
}
