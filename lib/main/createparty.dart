import 'package:flutter/material.dart';
import 'dart:async';
import 'package:globe/global.dart';
import 'package:globe/newuser/termsofservice.dart';
import 'hub.dart';

class CreateParty extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CreatePartyState();
  }
}

class CreatePartyState extends State<CreateParty> {
  bool checkpoint = false;
  bool isButtonEnabled = false;
  TextEditingController partyName = new TextEditingController();
  TextEditingController partyLocation = new TextEditingController();

  DateTime date = new DateTime.now();
  TimeOfDay time = new TimeOfDay.now();

  Future<Null> selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: new DateTime(2019),
      lastDate: new DateTime(2030),
    );
    if (picked != null && picked != date) {
      setState(() {
        date = picked;
      });
    }
  }

  Future<Null> selectTime(BuildContext context) async {
    final TimeOfDay picked =
        await showTimePicker(context: context, initialTime: time);
    if (picked != null && picked != date) {
      setState(() {
        time = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var _onPressed;
    if (isButtonEnabled) {
      _onPressed = () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Hub()));
      };
    }
    double height = MediaQuery.of(context).size.height;
    double formheight = height * 0.4;
    return new Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: new AppBar(
          backgroundColor: paleRedColor,
          elevation: 0.0,
          leading: Padding(
            padding: EdgeInsets.only(left: 12),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Hub()));
              },
            ),
          ),
        ),
        backgroundColor: paleRedColor,
        body: new Column(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
              child: new TextFormField(
                controller: partyName,
                decoration: new InputDecoration(
                    labelText: 'Event Name',
                    labelStyle: new TextStyle(
                        fontFamily: 'Varela Round',
                        color: Colors.white,
                        fontSize: 11.5,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.w200),
                    enabledBorder: new UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: new UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white))),
              ),
            ),
            new Container(
              padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
              child: new TextFormField(
                controller: partyLocation,
                decoration: new InputDecoration(
                    labelText: 'Event Location',
                    labelStyle: new TextStyle(
                        fontFamily: 'Varela Round',
                        color: Colors.white,
                        fontSize: 11.5,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.w200),
                    enabledBorder: new UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: new UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white))),
              ),
            ),
            new Padding(
              padding: EdgeInsets.only(bottom: 25.0),
            ),
            new SizedBox(
              width: 275.0,
              child: new RaisedButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                onPressed: () {
                  selectDate(context);
                },
                child: new Text("Pick Day", style: reggie4),
              ),
            ),
            new Padding(
              padding: EdgeInsets.only(bottom: 15.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new Container(
                  child: new SizedBox(
                    child: new RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      color: Colors.white,
                      onPressed: () {
                        selectTime(context);
                      },
                      child: new Text("Pick Start Time", style: reggie4),
                    ),
                  ),
                ),
                new Container(
                  child: new SizedBox(
                    child: new RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      color: Colors.white,
                      onPressed: () {
                        selectTime(context);
                      },
                      child: new Text("Pick Start Time", style: reggie4),
                    ),
                  ),
                )
              ],
            ),
            new Padding(
              padding: EdgeInsets.only(bottom: 15.0),
            ),
            new Text(date.toString(), style: reggie3),
            new Padding(
              padding: EdgeInsets.only(bottom: 15.0),
            ),
            new Text(
              time.toString(),
              style: reggie3,
            ),
            new Padding(
              padding: EdgeInsets.only(bottom: 15.0),
            ),
            new Center(
              child: new Row(children: <Widget>[
                new Checkbox(
                  activeColor: Colors.white,
                  value: checkpoint,
                  onChanged: (bool value) {
                    setState(() {
                      if (value = false) {
                        isButtonEnabled = false;
                      }
                      if (value = true) {
                        checkpoint = value;
                        isButtonEnabled = true;
                      }
                    });
                  },
                ),
                new GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Terms()));
                  },
                  child: new Text(
                    "I agree to the terms and conditions",
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                        fontFamily: 'Varela Round',
                        color: Colors.white,
                        fontSize: 11.5,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.w200),
                  ),
                ),
              ]),
            ),
            new Padding(
              padding: EdgeInsets.only(top: 15.0),
            ),
            new SizedBox(
              width: 275.0,
              child: new RaisedButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                onPressed: _onPressed,
                child: new Text(
                  "Create",
                  style: loginScreen,
                ),
              ),
            ),
          ],
        ));
  }
}
