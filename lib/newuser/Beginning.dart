import 'package:flutter/material.dart';
import 'package:globe/Mapping.dart';
import 'package:globe/global.dart';
import 'termsofservice.dart';
import 'Start.dart';
import 'package:globe/Auth.dart';

class Start extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new StartState();
  }
  Start ({
    this.auth,
    this.onSignedIn
  });
  final VoidCallback onSignedIn;
  final AuthImplementation auth;
}

class StartState extends State<Start> {
  AuthStatus _authStatus = AuthStatus.notSignedIn;
  void _signedIn() {
    setState(() {
      _authStatus = AuthStatus.signedIn;
    });
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double labelheight = height * 0.65;

    return new Scaffold(
      backgroundColor: paleRedColor,
      body: new Column(
        children: <Widget>[
          new SizedBox(), 
          new Container(
            height: labelheight,
            child: new Image(
              image: AssetImage('assets/Logo.png'),
            ),
          ),
          new Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),
          new Container(
            child: new SizedBox(
              height: 50.0,
              width: 270.0,
              child: new RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Sign
                      (
                        auth: widget.auth,
                        onSignedIn: widget.onSignedIn
                      )));
                },
                color: Colors.white,
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: new Text("Enter", style: reggie),
              ),
            ),
          ),
          new Padding(
            padding: EdgeInsets.only(top: 25.0),
          ),
          new Container(
            child: new SizedBox(
              height: 30.0,
              width: 150.0,
              child: new RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Terms()));
                },
                color: Colors.white,
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: new Text(
                  "Terms of Service",
                  style: new TextStyle(
                    fontFamily: 'reggie',
                    color: paleRedColor,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
