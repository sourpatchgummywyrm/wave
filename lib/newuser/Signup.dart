import 'package:flutter/material.dart';
import 'package:globe/global.dart';
import 'package:globe/main/hub.dart';
import 'Login.dart';
import 'Start.dart';

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SignUpState();
  }
}

class SignUpState extends State<SignUp> {
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  bool agree = false;
  bool isButtonEnabled = false;

  // void _onPressed() {
  //   if (isButtonEnabled) {
  //     _onPressed = null;
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    var _onPressed;
    if (isButtonEnabled) {
      _onPressed = () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Hub()));
      };
    }
    double height = MediaQuery.of(context).size.height;
    double formheight = height * 0.6;
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: paleRedColor,
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
      body: new Column(
        children: <Widget>[
          new Container(
            child: new Column(
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
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
                new Container(
                  padding: EdgeInsets.only(left: 40.0, right: 40.0, top: 20.0),
                  child: new TextFormField(
                    controller: _emailController,
                    decoration: new InputDecoration(
                      labelText: "Email",
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
                  padding: EdgeInsets.only(left: 40.0, right: 40.0, top: 20.0),
                  child: new TextFormField(
                    controller: _passwordController,
                    obscureText: true,
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
                // new Container(
                //     padding:
                //         EdgeInsets.only(left: 40.0, right: 40.0, top: 20.0),
                //     child: new TextFormField(
                //       controller: _passwordController,
                //       obscureText: true,
                //       decoration: new InputDecoration(
                //         labelText: "Re-enter Password",
                //         labelStyle: reggie3,
                //         enabledBorder: UnderlineInputBorder(
                //             borderSide: new BorderSide(color: Colors.white)),
                //         focusedBorder: UnderlineInputBorder(
                //           borderSide: BorderSide(color: neonGreenColor),
                //         ),
                //       ),
                //     ))
              ],
            ),
          ),
          new Padding(
            padding: EdgeInsets.only(top: 70.0),
          ),
          new Container(
              child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Checkbox(
                activeColor: Colors.white,
                value: agree,
                onChanged: (bool value) {
                  setState(() {
                    if (value = false) {
                      isButtonEnabled = false;
                    }
                    if (value = true) {
                      agree = value;
                      isButtonEnabled = true;
                    }
                  });
                },
              ),
              new GestureDetector(
                  onTap: () {},
                  child: new Text(
                    "I agree to the terms and conditions",
                    style: reggie3,
                  ))
            ],
          )),
          new Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),
          new Container(
            child: new SizedBox(
              width: 270.0,
              height: 50.0,
              child: new RaisedButton(
                onPressed: _onPressed,
                color: Colors.white,
                elevation: 30.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: new Text(
                  "Create Account",
                  style: reggie,
                ),
              ),
            ),
          ), //raisedbutton
        ],
      ),
    );
  }
}
