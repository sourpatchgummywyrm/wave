import 'package:flutter/material.dart';
import 'package:globe/global.dart';

String eventName = "";
String eventLocation = "";
bool val;

class Profile extends StatefulWidget {
  Profile({this.passedName, this.passedLocation});
  String passedName;
  String passedLocation;

  Profile.add(String name, String location, bool rsvpval) {
    eventName = name;
    eventLocation = location;
    val = rsvpval;
  }
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
              padding: EdgeInsets.only(
                  left: 20.0, right: 20.0, bottom: 20.0, top: 20.0),
              child: new Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: new ExpansionTile(
                    title: new Text(
                      "Attending",
                      style: new TextStyle(
                        color: Colors.green,
                        fontFamily: 'Varela Round',
                        fontSize: 18.0,
                      ),
                    ),
                    children: <Widget>[
                      new Text("Event: $eventName , Location: $eventLocation"),
                      new Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      )
                    ],
                  ))),
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
        ]
      )/*new Column(
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
              padding: EdgeInsets.only(
                  left: 20.0, right: 20.0, bottom: 20.0, top: 20.0),
              child: new Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: new ExpansionTile(
                    title: new Text(
                      "Attending",
                      style: new TextStyle(
                        color: Colors.green,
                        fontFamily: 'Varela Round',
                        fontSize: 18.0,
                      ),
                    ),
                    children: <Widget>[
                      new Text("Event: $eventName , Location: $eventLocation"),
                      new Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      )
                    ],
                  ))),
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
      ),*/
    );
  }
}
