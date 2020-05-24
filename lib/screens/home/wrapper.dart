import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grow_more/screens/authenticate/authenticate.dart';
import 'package:grow_more/screens/home/home_screen.dart';
import 'package:grow_more/screens/intro_slides.dart';
// import 'package:grow_more/screens/splash_screen.dart';
// import 'package:grow_more/services/auth_service.dart';
import 'package:provider/provider.dart';
import 'package:grow_more/models/user.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState()=>_WrapperState();
}

class _WrapperState extends State<Wrapper>{

  bool _showLogin=false;

  void _handleChange(bool newValue){
    setState(() {
      _showLogin=newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<FirebaseUser>(context);

    if (user == null) {
      return _showLogin?Authenticate():IntroSlides(onChanged: _handleChange,);
    } else {
      return HomeScreen();
    }
  }
}
