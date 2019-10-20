import 'package:flutter/material.dart';
import 'package:globe/global.dart';

class Profile extends StatefulWidget {
  Profile({this.passedName, this.passedLocation});
  String passedName;
  String passedLocation;
  @override
  State<StatefulWidget> createState() {
    return new ProfileState();
  }
}

class ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: paleRedColor,
      body: new Column(
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
              'Welcome, (User)',
              style: loginScreen2,
            ),
          ),
          new Container(
            height: 265,
            child: new Text("${widget.passedName} + ${widget.passedLocation}"),
          ),
          new SizedBox(
              width: 300.0,
              height: 42.5,
              child: new RaisedButton(
                elevation: 10.0,
                onPressed: () {},
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
    );
  }
}
