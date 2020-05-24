import "package:flutter/material.dart";
import 'package:flutter_spinkit/flutter_spinkit.dart';

//this widget is for loader , scrre for loading for function that took fef time to load
class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[900],
      child: Center(
        child: SpinKitChasingDots(
          color: Colors.white,
          size: 55.0,
        ),
      ),
    );
  }
}
