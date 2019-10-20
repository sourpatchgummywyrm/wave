import 'package:flutter/material.dart';
import 'package:globe/global.dart';

class Waves extends StatefulWidget {
  Waves({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new WavesState();
  }
}

class WavesState extends State<Waves> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _enabled = true;

  @override
  Widget build(BuildContext context) {
    // var onPressed;
    // if (_enabled) {
    //   onPressed = () {
    //     setState(() {
    //        = false;
    //     });
    //     final snackBar = new SnackBar(
    //       content: new Text(
    //         "You are now attending this Party",
    //         style: reggie4,
    //         textAlign: TextAlign.center,
    //       ),
    //       duration: new Duration(seconds: 3),
    //       backgroundColor: Colors.white,
    //     );
    //     _scaffoldKey.currentState.showSnackBar(snackBar);
    //   };
    // }

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
                                            child: new RaisedButton(
                                              elevation: 10.0,
                                              onPressed: () {
                                                setState(() {
                                                  events.rsvp = true;
                                                  if (events.rsvp == true) {
                                                    return null;
                                                  }
                                                });
                                              },
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0)),
                                              color: Colors.green,
                                              child: new Text(
                                                "RSVP",
                                                style: reggie6,
                                              ),
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

final List<Events> _events = <Events>[
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
