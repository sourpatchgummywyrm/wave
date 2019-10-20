import 'package:flutter/material.dart';
import 'package:globe/main/hub.dart';
import 'package:globe/newuser/Start.dart';
import 'Auth.dart';

enum AuthStatus {
  signedIn,
  notSignedIn
}

class Mapping extends StatefulWidget {
  State<StatefulWidget> createState(){
    return _MappingState();
  }
  final AuthImplementation auth;
  Mapping ({
    this.auth
  });
}

class _MappingState extends State<Mapping> {
  AuthStatus _authStatus = AuthStatus.notSignedIn;
  @override
  void initState() {
    super.initState();
    widget.auth.getCurrentUser().then((firebaseUserId){
      setState(() {
       _authStatus = firebaseUserId == null ? AuthStatus.notSignedIn : AuthStatus.signedIn; 
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    switch(_authStatus) {
      case AuthStatus.notSignedIn:
      return new Start();
      break;
      case AuthStatus.signedIn:
      return new Hub();
      break;
    }
    return null;
  }
}