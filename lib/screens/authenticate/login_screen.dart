import 'package:flutter/material.dart';
import 'package:grow_more/animation/fadeAnimation.dart';
import 'package:grow_more/services/auth_service.dart';
import 'package:grow_more/shared/loader.dart';
import 'package:grow_more/viewmodels/auth_viewmodel.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  final Function toggleView;

  LoginScreen({this.toggleView});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
//
  //crreate an object from Auth service class to access signAnn() method

  final AuthService _auth = AuthService();

  //use to identifyour form this global form state key
  final _formKey = GlobalKey<FormState>();

  //loading widget false , it shows when the value is true
  bool loading = false;

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return loading
        ? Loading()
        : Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 300,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: -40,
                          height: 400,
                          width: width,
                          child: FadeAnimation(
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/loginScreenImages/login.png'),
                                    fit: BoxFit.fitWidth),
                              ),
                            ),
                            delay: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(
                          delay: 1.5,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Color.fromRGBO(49, 39, 79, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),

                        //start of the form widget
                        FadeAnimation(
                          delay: 1.5,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 40),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(196, 135, 198, .3),
                                    blurRadius: 20,
                                    offset: Offset(0, 10),
                                  )
                                ]),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                children: <Widget>[
                                  TextFormField(
                                    validator: (val) => val.isEmpty
                                        ? 'Please enter email address'
                                        : null,
                                    onChanged: (val) {
                                      setState(() {
                                        email = val;
                                      });
                                    },
                                    decoration: InputDecoration(
                                        border: new UnderlineInputBorder(
                                            borderSide: new BorderSide(
                                                color: Colors.purple)),
                                        hintText: "email address",
                                        hintStyle:
                                            TextStyle(color: Colors.grey)),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  TextFormField(
                                    onChanged: (val) {
                                      setState(() {
                                        password = val;
                                      });
                                    },
                                    decoration: InputDecoration(
                                        border: new UnderlineInputBorder(
                                            borderSide: new BorderSide(
                                                color: Colors.purple)),
                                        hintText: "password",
                                        hintStyle:
                                            TextStyle(color: Colors.grey)),
                                    validator: (val) =>
                                        val.isEmpty ? 'enter password' : null,
                                    obscureText: true,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        //Login button
                        FadeAnimation(
                          delay: 1.5,
                          child: Container(
                            // padding: EdgeInsets.all(10),
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Center(
                              child: RaisedButton(
                                elevation: 0,
                                //remove shadow
                                shape: const StadiumBorder(),
                                padding: EdgeInsets.symmetric(
                                    vertical: 15.0, horizontal: 90.0),
                                color: Color.fromRGBO(49, 39, 79, 1),
                                textColor: Colors.white,
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    // fontWeight: FontWeight.bold,
                                    //fontStyle: FontStyle.italic,
                                    //textBaseline: TextBaseline.alphabetic
                                  ),
                                ),
                                onPressed: () async {
                                  if (_formKey.currentState.validate()) {
                                    setState(() => loading = true);

                                    bool result =
                                        await Provider.of<AuthViewModel>(
                                                context,
                                                listen: false)
                                            .login(
                                                email: email,
                                                password: password);

                                    if (!result) {
                                      setState(() {
                                        error = '* Cretentials are not valid !';
                                        loading = false;
                                      });
                                    }
//                                    dynamic result =
//                                        await _auth.signInWithEmailAndPAssword(
//                                            email, password);
//                                    if (result == null) {
//                                      setState(() {
//                                        error = '* Cretentials are not valid !';
//                                        loading = false;
//                                      });
//                                    }
                                  }
                                },
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),

                        //register button
                        FadeAnimation(
                          delay: 1.5,
                          child: Container(
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Center(
                              child: RaisedButton(
                                elevation: 0,
                                //remove shadow
                                shape: const StadiumBorder(),
                                padding: EdgeInsets.symmetric(
                                    vertical: 15.0, horizontal: 80.0),
                                color: Color.fromRGBO(49, 39, 79, 1),
                                textColor: Colors.white,
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    // fontWeight: FontWeight.bold,
                                    //fontStyle: FontStyle.italic,
                                    //textBaseline: TextBaseline.alphabetic
                                  ),
                                ),
                                onPressed: () async {
                                  widget.toggleView();
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) => RegisterScreen()),
                                  // );
                                },
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text(
                            error,
                            style: TextStyle(color: Colors.red, fontSize: 14.0),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
  }
}
