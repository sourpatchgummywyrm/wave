import 'package:flutter/material.dart';
import 'package:globe/global.dart';
import 'package:globe/main/attending.dart' as prefix0;
import 'package:globe/newuser/Beginning.dart';
import 'attending.dart';
import 'package:globe/newuser/Start.dart'; 
import 'package:globe/Auth.dart';



class Profile extends StatefulWidget {
  Profile({ this.auth, this.signedOut});
  final AuthImplementation auth;
  final VoidCallback signedOut;
  @override
  State<StatefulWidget> createState() {
    return new ProfileState();
  }
}

class ProfileState extends State<Profile> {
  void _signOut() async {
    try {
      await widget.auth.signOut();
      widget.signedOut();
    } catch(e){
      print(e);
    }
  }
  FormType _formType = FormType.login;
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
                //shape: RoundedRectangleBorder(
                    //borderRadius: BorderRadius.circular(10.0)),
                //color: Colors.white,
                child: new Row(
                  children: <Widget>[
                  
                    new Align(
                        alignment: Alignment.center,
                        child: new SizedBox(
                          height: 30.0,
                          width: 268.0,
                          child: new RaisedButton(
                            onPressed: () {
                            _signOut();
                             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Start
                      (
                        auth: widget.auth,
                        onSignedIn: widget.signedOut)));
                          },
                        color: Colors.white,
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                        child: new Text(
                        "Logout",
                        style: new TextStyle(
                        fontFamily: 'reggie',
                        color: paleRedColor,
                        fontSize: 12.0,
                      ),
                      ),
                  ),
                    ),)
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


