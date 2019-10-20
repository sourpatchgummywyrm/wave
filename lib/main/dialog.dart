import 'package:flutter/material.dart';
import 'package:globe/global.dart';

class Dialogs {
  information(BuildContext context, String title) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              title,
              textAlign: TextAlign.center,
              style: new TextStyle(
                  fontFamily: 'Varela Round',
                  color: paleRedColor,
                  fontSize: 22.0,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w300),
            ),
            content: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Text(
                    "You are attending $title",
                    style: reggie4,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            actions: <Widget>[
              new SizedBox(
                width: 100.0,
                child: new RaisedButton(
                  color: paleRedColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Bett",
                    style: reggie3,
                  ),
                ),
              )
            ],
          );
        });
  }
}
