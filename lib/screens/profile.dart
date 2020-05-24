import 'package:flutter/material.dart';
import 'package:grow_more/models/user.dart';
import 'package:grow_more/viewmodels/auth_viewmodel.dart';
import 'package:provider/provider.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    User _user = Provider.of<AuthViewModel>(context).currentUser;
    return Container(
      child: new ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            //color: Colors.blue[300],
            margin: new EdgeInsets.symmetric(horizontal: 150.0, vertical: 10),
            height: 120.0,
            //width: 0.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image:
                        AssetImage('assets/images/dashboardImages/user.png')),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
                    offset: Offset(0, 1),
                  )
                ],
                color: Colors.white,
                shape: BoxShape.circle),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  margin:
                      new EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                  child: Text(
                    '${_user?.userName ?? 'user'}',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange),
                  ),
                ),
                Container(
                  margin:
                      new EdgeInsets.symmetric(horizontal: 2.0, vertical: 10),
                  height: 60,
                  width: 700,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepPurple,
                    shape: BoxShape.rectangle,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: Text(
                          //'${_user?.userName ?? 'user'}'
                          'Trainee',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Score : ${_user?.score ?? 100}',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            margin: new EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(196, 135, 198, .3),
                  blurRadius: 10,
                  offset: Offset(0, 10),
                )
              ],
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              //color: Colors.yellow[300],
              //margin: EdgeInsets.all(4.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(
                          'assets/images/dashboardImages/diamond.png'),
                    ),
                    //leading: Icon(Icons.album),
                    title: Text(
                      'Rewarded',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    subtitle: Text('Plaese contact us to get reward !'),
                  ),
                  ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('Get Reward'),
                        onPressed: () {
                          /* ... */
                        },
                      ),
                      FlatButton(
                        child: const Text('Dismiss'),
                        onPressed: () {
                          /* ... */
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
