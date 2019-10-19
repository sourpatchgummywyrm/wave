import 'package:flutter/material.dart';
import 'package:globe/global.dart';
import 'Start.dart';
import 'package:globe/main/hub.dart';

class Login extends StatefulWidget {
  Login({Key key1}) : super(key: key1); //what does this do
  @override
  State<StatefulWidget> createState() {
    return new LoginState();
  }
}

class LoginState extends State<Login> {
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double formheight = height * 0.5;

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
                  context, MaterialPageRoute(builder: (context) => Start()));
            },
          ),
        ),
      ),
      backgroundColor: paleRedColor,
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
              height: formheight,
              child: new Column(
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.only(left: 40.0, right: 40.0),
                    child: new TextFormField(
                      controller: _usernameController,
                      decoration: new InputDecoration(
                        labelText: "Username",
                        labelStyle: reggie3,
                        enabledBorder: UnderlineInputBorder(
                            borderSide: new BorderSide(color: Colors.white)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: neonGreenColor),
                        ),
                      ),
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(top: 25.0),
                  ),
                  new Container(
                    padding: EdgeInsets.only(left: 40.0, right: 40.0),
                    child: new TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      maxLines: 1,
                      decoration: new InputDecoration(
                        labelText: "Password",
                        labelStyle: reggie3,
                        enabledBorder: UnderlineInputBorder(
                            borderSide: new BorderSide(color: Colors.white)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: neonGreenColor),
                        ),
                      ),
                    ),
                  ),
                  new Container(
                      child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Container(
                          padding: EdgeInsets.only(left: 15.0, top: 25.0),
                          child: new Row(
                            children: <Widget>[
                              Checkbox(
                                activeColor: Colors.white,
                                value: rememberMe,
                                onChanged: (bool value) {
                                  setState(() {
                                    rememberMe = value;
                                  });
                                },
                              ),
                              new Text(
                                "Remember Me",
                                style: reggie3,
                              ),
                            ],
                          )),
                      new Container(
                        padding: EdgeInsets.only(right: 25.0, top: 25.0),
                        child: new Text(
                          "Forgot Password",
                          style: reggie3,
                        ),
                      )
                    ],
                  ))
                ],
              )),
          new Container(
              // padding: EdgeInsets.only(top: 50.0),
              child: new Center(
            child: new SizedBox(
              height: 50.0,
              width: 270.0,
              child: new RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Hub()));
                },
                elevation: 20.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: new Text("Enter", style: reggie),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
