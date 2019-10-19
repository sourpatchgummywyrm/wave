import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:globe/global.dart';
import 'package:globe/newuser/Signup.dart';
import 'Login.dart';

class Start extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new StartState();
  }
}

class StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double labelheight = height * 0.65;

    return new Scaffold(
      backgroundColor: paleRedColor,
      body: new Column(
        children: <Widget>[
          new SizedBox(), //add padding
          new Container(
            padding: EdgeInsets.only(
              top: 50.0,
            ),
            child: new GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUp()));
              },
              child: new Text(
                "Create an account",
                style: new TextStyle(
                    fontFamily: 'Varela Round',
                    color: Colors.white,
                    fontSize: 17.5,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.w200),
              ),
            ),
          ),
          new Container(
            height: labelheight,
          ),
          new Container(
            child: new SizedBox(
              height: 50.0,
              width: 270.0,
              child: new RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                color: Colors.white,
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: new Text("Login", style: reggie),
              ),
            ),
          ),
          new Padding(
            padding: EdgeInsets.only(top: 25.0),
          ),
          new Container(
            child: new Text("Terms of Service", style: reggie3),
          )
        ],
      ),
    );
  }
}
