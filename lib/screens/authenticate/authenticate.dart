import 'package:flutter/material.dart';
import 'package:grow_more/screens/authenticate/login_screen.dart';
import 'package:grow_more/screens/authenticate/register_screen.dart';

//this widget is the root of authetication  widgets

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;
  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return LoginScreen(toggleView: toggleView);
    } else {
      return RegisterScreen(toggleView: toggleView);
    }
  }
}
