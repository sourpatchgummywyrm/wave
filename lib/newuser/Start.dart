import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:globe/Auth.dart';
import 'package:globe/global.dart';
import 'package:globe/main/hub.dart';
import 'CustomButton.dart'; 

class Sign extends StatefulWidget {
  Sign({ this.auth, this.onSignedIn,});
  final AuthImplementation auth;
  final VoidCallback onSignedIn;
  @override
  State<StatefulWidget> createState() {
    return new SignState();
  }
}

enum FormType {
  login,
  register
}

class SignState extends State<Sign> {
  final formKey = new GlobalKey<FormState>();
  String _email;
  String _password;
  FormType _formType = FormType.login;
  String _authHint = '';

  bool validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }
  
  void validateAndSubmit() async {
    if (validateAndSave()) {
      try {
        String userId = _formType == FormType.login
            ? await widget.auth.SignedIn(_email, _password)
            : await widget.auth.SignedUp(_email, _password);
        setState(() {
          _authHint = 'Signed In\n\nUser id: $userId';
        });
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Hub(auth: widget.auth, onSignedOut: widget.onSignedIn,)));
        widget.onSignedIn();
        //Navigator.push(context, MaterialPageRoute(builder: (context) => Hub()));
      }
      catch (e) {
        setState(() {
          _authHint = 'Sign In Error\n\n${e.toString()}';
        });
        if (e.toString()=="type 'AuthResult' is not a subtype of type 'FirebaseUser' in type cast"){
          //Navigator.of(context).pop();
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Hub(auth: widget.auth, onSignedOut: widget.onSignedIn,)));
        }
        print(e);
      }
    } else {
      setState(() {
        _authHint = '';
      });
    }
  }

  void moveToRegister() {
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.register;
      _authHint = '';
    });
  }

  void moveToLogin() {
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.login;
      _authHint = '';
    });
  }

  List<Widget> usernameAndPassword() {
    return [
      padded(child: new TextFormField(
        key: new Key('email'),
        decoration: new InputDecoration(labelText: 'Email'),
        autocorrect: false,
        validator: (val) => val.isEmpty ? 'Email can\'t be empty.' : null,
        onSaved: (val) => _email = val,
      )),
      padded(child: new TextFormField(
        key: new Key('password'),
        decoration: new InputDecoration(labelText: 'Password'),
        obscureText: true,
        autocorrect: false,
        validator: (val) => val.isEmpty ? 'Password can\'t be empty.' : null,
        onSaved: (val) => _password = val,
      )),
    ];
  }

  List<Widget> submitWidgets() {
    switch (_formType) {
      case FormType.login:
        return [
          new PrimaryButton(
            key: new Key('login'),
            text: 'Login',
            height: 44.0,
            onPressed: validateAndSubmit
          ),
          new FlatButton(
            key: new Key('need-account'),
            child: new Text("Need an account? Register"),
            onPressed: moveToRegister
          ),
        ];
      case FormType.register:
        return [
          new PrimaryButton(
            key: new Key('register'),
            text: 'Create an account',
            height: 44.0,
            onPressed: validateAndSubmit
          ),
          new FlatButton(
            key: new Key('need-login'),
            child: new Text("Have an account? Login"),
            onPressed: moveToLogin
          ),
        ];
    }
    return null;
  }

  Widget hintText() {
    return new Container(
        //height: 80.0,
        padding: const EdgeInsets.all(32.0),
        child: new Text(
            _authHint,
            key: new Key('hint'),
            style: new TextStyle(fontSize: 18.0, color: Colors.grey),
            textAlign: TextAlign.center)
    );
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: paleRedColor,
      body: new SingleChildScrollView(child: new Container(
        padding: const EdgeInsets.all(16.0),
        child: new Column(
          children: [
            new Text("\n\n\n\n\n\n\n\n\n"),
            new Card(
              child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Container(
                    padding: const EdgeInsets.all(16.0),
                    child: new Form(
                        key: formKey,
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: usernameAndPassword() + submitWidgets(),
                        )
                    )
                ),
              ])
            ),
            hintText()
          ]
        )
      ))
    );
  }

  Widget padded({Widget child}) {
    return new Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: child,
    );
  }
}