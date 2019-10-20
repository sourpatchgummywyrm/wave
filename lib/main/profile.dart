import 'package:flutter/material.dart';
import 'package:globe/global.dart';
import 'package:globe/main/attending.dart' as prefix0;
import 'attending.dart';



class Profile extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    return new ProfileState();
  }
}

class ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Scaffold(
      backgroundColor: paleRedColor,
      body: Stack(
        children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/Girl.png',
              width: size.width,
              height: size.height,
              fit: BoxFit.fill,
            ),
          ),
          new Column(
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.only(top: 30.0),
          ),
          new Center(
            child: new CircleAvatar(
              backgroundColor: Colors.white,
              radius: 50.0,
            ),
          ),
          new Container(
            padding: EdgeInsets.only(top: 20.0),
            child: new Text(
              'Welcome, User',
              style: loginScreen2,
            ),
          ),
          new Container(
            child: new SizedBox(
              child: new RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => prefix0.Attending()));
                },
                child: new Text("Attending",
                    style: new TextStyle(color: Colors.green, fontSize: 20.0)),
              ),
            ),
          ),
          new SizedBox(
              width: 300.0,
              height: 42.5,
              child: new RaisedButton(
                elevation: 10.0,
                onPressed: () {
                  setState(() {
                  });
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.white,
                child: new Row(
                  children: <Widget>[
                    new Align(
                      alignment: Alignment.center,
                      child: new Icon(
                        Icons.settings,
                        color: paleRedColor,
                      ),
                    ),
                    new Align(
                        alignment: Alignment.center,
                        child: new Text(
                          "Settings",
                          style: loginScreen,
                        ))
                  ],
                ),
              ))
            ],
          ),
        ]
      )
    );
  }
}


