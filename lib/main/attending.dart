import 'package:flutter/material.dart';
import 'package:globe/global.dart';

String eventName = "";
String eventLocation = "";
bool val;

class Attending extends StatefulWidget {
  Attending({this.passedName, this.passedLocation});
  String passedName;
  String passedLocation;

  Attending.add(String name, String location, bool rsvp) {
    eventName = name;
    eventLocation = location;
    val = rsvp;
  }
  @override
  State<StatefulWidget> createState() {
    return new AttendingState();
  }
}

class AttendingState extends State<Attending> {
  @override
  Widget build(BuildContext context) {
    if (val) {
      _attending.add(
          new AttendingL(name: eventName, location: eventLocation, rsvp: val));
    }
    return new Scaffold(
      backgroundColor: paleRedColor,
      body: new Container(
          // padding: EdgeInsets.only(top: 50.0, right: 15.0, left: 15.0),
          child: new ListView.builder(
        shrinkWrap: true,
        itemCount: _attending.length,
        itemBuilder: (context, index) {
          final attending = _attending[index];
          return new ListTile(
            title: new Column(
              children: <Widget>[val ? new Text(attending.name) : null],
            ),
          );
        },
      )),
    );
  }
}

class AttendingL {
  AttendingL({this.name, this.location, this.rsvp});

  String name;
  String location;
  bool rsvp;
}

List<AttendingL> _attending = <AttendingL>[
  AttendingL(name: eventName, location: eventLocation, rsvp: val)
];
