import 'package:flutter/material.dart';
import 'package:grow_more/screens/home/feed.dart';
import 'package:grow_more/screens/home/plant_list.dart';
import 'package:grow_more/screens/notification.dart';
import 'package:grow_more/screens/profile.dart';
import 'package:grow_more/services/auth_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final AuthService _auth = AuthService();

  int _currentIndex = 0;
  final List<Widget> _children = [
    PlantList(),
    NotificationPage(),
    FeedScreen(),
    UserProfile(),
  ];

  final List<String> _titleList = [
    'My Garden',
    'Notifications',
    'Feed',
    'Profile',
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titleList[_currentIndex]),
        backgroundColor: Colors.purple[900],
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () async {
                await _auth.signOut();
              },
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: Text(
                'LogOut',
                style: TextStyle(
                    // fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ))
        ],
      ),

      // navigation menu

//          drawer: slider(),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped, // new
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.purple[900],
              ),
              title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_active,
                color: Colors.purple[900],
              ),
              title: Text("Notifications")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.image,
                color: Colors.purple[900],
              ),
              title: Text("Feed")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.supervised_user_circle,
                color: Colors.purple[900],
              ),
              title: Text("Profile")),
        ],
      ),

      ///body of the  homePage
      body: _children[_currentIndex],

      // Center(
      //   child: Card(
      //     color: Colors.grey[300],
      //     elevation: 10.0,
      //     child: Container(
      //         height: 100.0,
      //         width: 100.0,
      //         alignment: Alignment.center,
      //         child: FlatButton(
      //             onPressed: () async {
      //               await _auth.signOut();
      //             },
      //             child: Text('Logout'))),
      //   ),
      // ),
    );
  }

  Builder slider() {
    return Builder(
      builder: (context) => Drawer(
        child: ListView(
          children: <Widget>[
            //navigate for user profile
            Padding(
              padding: EdgeInsets.fromLTRB(5.0, 30.0, 0, 30),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/dashboardImages/user.png'),
                ),
                title: Text(
                  "User_Name",
                  style: TextStyle(
                      fontSize: 18,
                      //fontWeight: FontWeight.bold,
                      color: Colors.purple[900]),
                ),
                subtitle: Text("me@codesundar.com"),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.purple[900],
                size: 35.0,
              ),
              title: Text(
                "My profile",
                style: TextStyle(
                    fontSize: 18,
                    //fontWeight: FontWeight.bold,
                    color: Colors.purple[900]),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            //navigate for notification
            ListTile(
              leading: Icon(
                Icons.notifications,
                size: 30.0,
                color: Colors.purple[900],
              ),
              title: Text(
                "Notifications",
                style: TextStyle(
                    fontSize: 18,
                    //fontWeight: FontWeight.bold,
                    color: Colors.purple[900]),
              ),
              // onTap: () {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) => NotificationPage()));
              // },
            ),
            SizedBox(
              height: 5,
            ),

            ListTile(
              leading: Icon(
                Icons.image,
                size: 30.0,
                color: Colors.purple[900],
              ),
              title: Text(
                "News feed",
                style: TextStyle(
                    fontSize: 18,
                    //fontWeight: FontWeight.bold,
                    color: Colors.purple[900]),
              ),
              // onTap: () {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) => NotificationPage()));
              // },
            ),
            SizedBox(
              height: 5,
            ),
            //navigate logout from application
            ListTile(
              leading: Icon(Icons.supervised_user_circle),
              title: Text("Log out"),
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => NotificationPage()));
              },
            ),
            SizedBox(
              height: 200,
            ),
            ListTile(
              leading: Container(
                height: 100,
                width: 100,
                child: Image.asset('assets/images/dashboardImages/growMore.png',
                    fit: BoxFit.fitWidth),
              ),
              // leading: Icon(Icons.supervised_user_circle),
              // title: Text("Log out"),
              // onTap: () {
              //   // Navigator.push(
              //   //     context,
              //   //     MaterialPageRoute(
              //   //         builder: (context) => NotificationPage()));
              // },
            )
          ],
        ),
      ),
    );
  }
}
