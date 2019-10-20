import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:globe/global.dart';
import 'package:globe/main/profile.dart';

String eventName="";
String day="";
String timeOfDay="";
String place="";
class Waves extends StatefulWidget {

  Waves();
  Waves.create(String name, String date,String time,String location){
     eventName = name;
     day = date;
     timeOfDay = time;
     place = location;
  }
  @override
  State<StatefulWidget> createState() {
    return new WavesState();
  }
}

class WavesState extends State<Waves> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    // if (widget.condition) {
    //   setState(() {
    //     // Events(widget.partyName, widget.partyLocation, widget.partyTime, widget.partyDescription)
    //     _events.add(Events());
    //   });
    // }
    bool repeat = false;
    for(int i = 0; i < _events.length; i++) {
      if(eventName == _events[i].name){
        repeat = true;
      }
    }
    if(!repeat) {
      _events.add(new Events(
        name: eventName,
        location: place,
        description: day,
        time: timeOfDay,
        rsvp: false));
    }
    double height = MediaQuery.of(context).size.height * 0.8;
    return new Scaffold(
      key: _scaffoldKey,
      backgroundColor: paleRedColor,
      body: new Column(
        children: <Widget>[
          new Container(
            height: 20.0,
          ),
          new Container(
              height: height,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _events.length,
                itemBuilder: (context, index) {
                  final events = _events[index];
                  return Dismissible(
                    direction: DismissDirection.endToStart,
                    background: new Container(
                      color: paleRedColor,
                    ),
                    onDismissed: (direction) {
                      setState(() {
                        _events.removeAt(index);
                        final snackBar = new SnackBar(
                          content: new Text(
                            "${events.name} has been removed",
                            style: reggie3,
                            textAlign: TextAlign.center,
                          ),
                          duration: new Duration(seconds: 3),
                          backgroundColor: Colors.grey,
                          action: new SnackBarAction(
                            label: "UNDO",
                            onPressed: () {
                              setState(() => _events.insert(index, events));
                            },
                          ),
                        );
                        _scaffoldKey.currentState.showSnackBar(snackBar);
                        // print(Events[0]);
                      });
                    },
                    key: Key(events.name),
                    child: new Container(
                      padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                      child: new Card(
                          elevation: 10.0,
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: new ExpansionTile(
                            title: new Column(
                              children: <Widget>[
                                new Align(
                                    alignment: Alignment.centerLeft,
                                    child: new Text(
                                      events.name,
                                      style: reggie4,
                                    )),
                                new Align(
                                    alignment: Alignment.centerLeft,
                                    child: new Text(
                                      events.location,
                                      style: reggie5,
                                    ))
                              ],
                            ),
                            children: <Widget>[
                              new ListTile(
                                title: new Column(
                                  children: <Widget>[
                                    new Container(
                                      child: new Column(
                                        children: <Widget>[
                                          new Text(
                                            events.time,
                                            style: reggie4,
                                          ),
                                          new Text(
                                            events.description,
                                            style: reggie4,
                                          )
                                        ],
                                      ),
                                    ),
                                    new Padding(
                                      padding: EdgeInsets.only(bottom: 15.0),
                                    ),
                                    new Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        new Container(
                                          child: new SizedBox(
                                            width: 300.0,
                                            height: 40.0,
                                            child: new RaisedButton(
                                              color: Colors.green,
                                              onPressed: !events.rsvp
                                                  ? () {
                                                      setState(() {
                                                        events.rsvp = true;
                                                      });
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      Profile(
                                                                        passedName:
                                                                            events.name,
                                                                        passedLocation:
                                                                            events.location,
                                                                      )));
                                                    }
                                                  : null,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0)),
                                              child: new Text("RSVP",
                                                  style: reggie3),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    new Padding(
                                      padding: EdgeInsets.only(bottom: 10.0),
                                    ),
                                    new SizedBox(
                                      width: 300.0,
                                      child: new RaisedButton(
                                        color: paleRedColor,
                                        onPressed: () {},
                                        elevation: 10.0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        child: new Text(
                                          "Contact Oraganizer",
                                          style: reggie6,
                                        ),
                                      ),
                                    ),
                                    new Padding(
                                      padding: EdgeInsets.only(bottom: 10.0),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                  );
                },
              ))
        ],
      ),
    );
  }
}

class Events {
  Events({this.name, this.location, this.description, this.time, this.rsvp});

  String name;
  String location;
  String description;
  String time;
  bool rsvp;
}

List<Events> _events = <Events>[
  Events(
      name: 'party1',
      location: 'location',
      description: "yadda yadda yadda",
      time: "12pm - 5pm",
      rsvp: false),
  Events(
      name: 'party2',
      location: 'location',
      description: "yadda yadda yadda",
      time: "12pm - 5pm",
      rsvp: false),
  Events(
      name: 'party3',
      location: 'location',
      description: "yadda yadda yadda",
      time: "12pm - 5pm",
      rsvp: false),
  Events(
      name: 'party4',
      location: 'location',
      description: "yadda yadda yadda",
      time: "12pm - 5pm",
      rsvp: false),
  Events(
      name: 'party5',
      location: 'location',
      description: "yadda yadda yadda",
      time: "12pm - 5pm",
      rsvp: false),
  Events(
      name: 'party6',
      location: 'location',
      description: "yadda yadda yadda",
      time: "12pm - 5pm",
      rsvp: false),
  Events(
      name: 'party7',
      location: 'location',
      description: "yadda yadda yadda",
      time: "12pm - 5pm",
      rsvp: false),
  Events(
      name: 'party8',
      location: 'location',
      description: "yadda yadda yadda",
      time: "12pm - 5pm",
      rsvp: false),
  Events(
      name: 'party9',
      location: 'location',
      description: "yadda yadda yadda",
      time: "12pm - 5pm",
      rsvp: false),
  Events(
      name: 'party10',
      location: 'location',
      description: "yadda yadda yadda",
      time: "12pm - 5pm",
      rsvp: false),
  Events(
      name: 'party11',
      location: 'location',
      description: "yadda yadda yadda",
      time: "12pm - 5pm",
      rsvp: false),
  Events(
      name: 'party12',
      location: 'location',
      description: "yadda yadda yadda",
      time: "12pm - 5pm",
      rsvp: false),
  Events(
      name: 'party13',
      location: 'location',
      description: "yadda yadda yadda",
      time: "12pm - 5pm",
      rsvp: false),
  Events(
      name: 'party14',
      location: 'location',
      description: "yadda yadda yadda",
      time: "12pm - 5pm",
      rsvp: false),
  Events(
      name: 'party15',
      location: 'location',
      description: "yadda yadda yadda",
      time: "12pm - 5pm",
      rsvp: false),
  Events(
      name: 'party16',
      location: 'location',
      description: "yadda yadda yadda",
      time: "12pm - 5pm",
      rsvp: false),
  Events(
      name: 'party17',
      location: 'location',
      description: "yadda yadda yadda",
      time: "12pm - 5pm",
      rsvp: false),
  Events(
      name: 'party18',
      location: 'location',
      description: "yadda yadda yadda",
      time: "12pm - 5pm",
      rsvp: false),
  Events(
      name: 'party19',
      location: 'location',
      description: "yadda yadda yadda",
      time: "12pm - 5pm",
      rsvp: false),
];
