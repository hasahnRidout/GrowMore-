import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grow_more/screens/home/wrapper.dart';
import 'package:grow_more/service_locator.dart';
import 'package:grow_more/viewmodels/auth_viewmodel.dart';
import 'package:grow_more/viewmodels/home_viewmodel.dart';
import 'package:provider/provider.dart';

import 'service_locator.dart';

void main() {
  setupServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider.value(value: FirebaseAuth.instance.onAuthStateChanged),
        ChangeNotifierProvider(create: (context) => AuthViewModel()),
        ChangeNotifierProvider(create: (context) => HomeViewModel())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
//    return StreamProvider<User>.value(
//      value: AuthService().user,
//      child: MaterialApp(
//        debugShowCheckedModeBanner: false,
//        home: Wrapper(),
//        //this is like its return the wrapper widget
//      ),
//    );
  }
}
