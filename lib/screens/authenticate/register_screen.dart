import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grow_more/animation/fadeAnimation.dart';
import 'package:grow_more/models/user.dart';
import 'package:grow_more/services/auth_service.dart';
import 'package:grow_more/shared/loader.dart';
import 'package:grow_more/viewmodels/auth_viewmodel.dart';
import 'package:provider/provider.dart';

// import 'package:usage/usage_io.dart';
// import 'package:email_validator/email_validator.dart';

class RegisterScreen extends StatefulWidget {
  final Function toggleView;

  RegisterScreen({this.toggleView});

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final AuthService _auth = AuthService();

  //use to identifyour form this global form state key
  final _formKey = GlobalKey<FormState>();

  bool loading = false;

  String userName = '';
  String email = '';
  String phoneNo = '';
  String password = '';
  String conPassword = '';
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
                  SafeArea(
                    child: Container(
                      height: 30,
                      child: IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            widget.toggleView();
                            //Navigator.pop(context);
                          }),
                    ),
                  ),
                  Container(
                    height: 220,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: -40,
                          height: 280,
                          width: width,
                          child: FadeAnimation(
                            delay: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/loginScreenImages/register.png'),
                                      fit: BoxFit.fitWidth)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(
                          delay: 1.8,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Let\'s get Started !",
                              style: TextStyle(
                                  color: Color.fromRGBO(49, 39, 79, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        FadeAnimation(
                          delay: 1.2,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 30),
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

                            // register form
                            child: Form(
                              //can access o the form to validation purpose
                              key: _formKey,
                              child: Column(
                                children: <Widget>[
                                  //username text field
                                  TextFormField(
                                    validator: (val) => val.isEmpty
                                        ? 'Please enter User name'
                                        : null,
                                    onChanged: (val) {
                                      setState(() {
                                        userName = val;
                                      });
                                    },
                                    decoration: InputDecoration(
                                        border: new UnderlineInputBorder(
                                            borderSide: new BorderSide(
                                                color: Colors.purple)),
                                        hintText: "User Name",
                                        hintStyle:
                                            TextStyle(color: Colors.grey)),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  // emailaddress text field
                                  TextFormField(
                                    validator: (val) => val.length < 5
                                        ? 'Please enter an email address'
                                        : null,
                                    // validator: (val) {
                                    //   bool emailValid = RegExp(
                                    //           r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    //       .hasMatch(val);
                                    //   if (emailValid == true) {
                                    //     return null;
                                    //   } else {
                                    //     print('Email format is wrong ');
                                    //   }
                                    // },
// validator: (val) =>val.isEmpty ? 'Please enter User name' : null,

                                    onChanged: (val) {
                                      setState(() {
                                        email = val;
                                      });
                                    },
                                    decoration: InputDecoration(
                                        border: new UnderlineInputBorder(
                                            borderSide: new BorderSide(
                                                color: Colors.purple)),
                                        hintText: "Email address",
                                        hintStyle:
                                            TextStyle(color: Colors.grey)),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  //phone number text field
                                  TextFormField(
                                    inputFormatters: <TextInputFormatter>[
                                      WhitelistingTextInputFormatter.digitsOnly
                                    ],
                                    validator: (val) => val.isEmpty
                                        ? 'Please enter phone number'
                                        : null,
                                    onChanged: (val) {
                                      setState(() {
                                        phoneNo = val;
                                      });
                                    },
                                    decoration: InputDecoration(
                                        border: new UnderlineInputBorder(
                                            borderSide: new BorderSide(
                                                color: Colors.purple)),
                                        hintText: "Phone Number ",
                                        hintStyle:
                                            TextStyle(color: Colors.grey)),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  //password text field
                                  TextFormField(
                                    obscureText: true,
                                    validator: (val) => val.length < 5
                                        ? 'Please enter a password'
                                        : null,
                                    onChanged: (val) {
                                      setState(() {
                                        password = val;
                                      });
                                    },
                                    decoration: InputDecoration(
                                        border: new UnderlineInputBorder(
                                            borderSide: new BorderSide(
                                                color: Colors.purple)),
                                        hintText: "Password",
                                        hintStyle:
                                            TextStyle(color: Colors.grey)),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),

                                  /// confirm passward
                                  TextFormField(
                                    validator: (val) => val.length < 5
                                        ? 'Paswords are not matched'
                                        : null,
                                    obscureText: true,
                                    onChanged: (val) {
                                      setState(() {
                                        conPassword = val;
                                      });
                                    },
                                    decoration: InputDecoration(
                                        border: new UnderlineInputBorder(
                                            borderSide: new BorderSide(
                                                color: Colors.purple)),
                                        hintText: "Confirm Password",
                                        hintStyle:
                                            TextStyle(color: Colors.grey)),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        // register button
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
                                    vertical: 15.0, horizontal: 100.0),
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
                                  if (_formKey.currentState.validate()) {
                                    bool result =
                                        await Provider.of<AuthViewModel>(
                                                context,
                                                listen: false)
                                            .register(
                                                user: User(
                                                    userName: userName,
                                                    email: email,
                                                    phoneNumber: phoneNo,
                                                    score: 0),
                                                password: password);

                                    if (!result) {
                                      setState(() {
                                        error =
                                            '* please provide a valid email address';
                                        loading = false;
                                      });
                                    }
//                                    dynamic result = await _auth
//                                        .registerWithEmailAndPAssword(
//                                            email, password);
//                                    setState(() => loading = true);
//
//                                    if (result == null) {
//                                      setState(() {
//                                        error =
//                                            '* please provide a valid email address';
//                                        loading = false;
//                                      });
//                                    }
                                  }

                                  print(userName);
                                  print(email);
                                  print(phoneNo);
                                  print(password);
                                  print(conPassword);
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
                  ),
                ],
              ),
            ),
          );
  }
}
