import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthImplementation {
  Future<String> SignedIn(String email, String password);
  Future<String> SignedUp(String email, String password);
  Future<String> getCurrentUser();
  Future<void> signOut();
}

class Auth implements AuthImplementation {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  Future<String> SignedIn(String email, String password) async {
    FirebaseUser user = (await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password)) as FirebaseUser;
    return user.uid;
  }

  Future<String> SignedUp(String email, String password) async {
    FirebaseUser user = (await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password)) as FirebaseUser;
    return user.uid;
  }

  Future<String> getCurrentUser() async {
    FirebaseUser user = await _firebaseAuth.currentUser();
    return user.uid;
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
