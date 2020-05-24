import 'package:flutter/material.dart';
//import 'package:dashboard_gardener/notification.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
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
            //color: Colors.purple[300],
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 20.0,
                  width: 100.0,
                  // child: Image.asset('images/banana.png'),
                ),
                const ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text(
                    'New task is to be comleted !',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                  subtitle: Text('Plant progress '),
                ),
                ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('Open'),
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
        Container(
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
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
            //color: Colors.purple[300],
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 20.0,
                  width: 100.0,
                  // child: Image.asset('images/banana.png'),
                ),
                const ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text(
                    'New task is to be comleted ! ',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                  subtitle: Text('Plant progress '),
                ),
                ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('Open'),
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
        Container(
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
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
            //color: Colors.purple[300],
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 20.0,
                  width: 100.0,
                  // child: Image.asset('images/banana.png'),
                ),
                const ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text(
                    'New task is to be comleted ! ',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                  subtitle: Text('Plant progress '),
                ),
                ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('Open'),
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
        Container(
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
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
            //color: Colors.purple[300],
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 20.0,
                  width: 100.0,
                  // child: Image.asset('images/banana.png'),
                ),
                const ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text(
                    'New task is to be comleted ! ',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                  subtitle: Text('Plant progress '),
                ),
                ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('Open'),
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
        Container(
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
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
            //color: Colors.purple[300],
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 20.0,
                  width: 100.0,
                  // child: Image.asset('images/banana.png'),
                ),
                const ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text(
                    'New task is to be comleted ! ',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                  subtitle: Text('Plant progress '),
                ),
                ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('Open'),
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
        Container(
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
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
            //color: Colors.purple[300],
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 20.0,
                  width: 100.0,
                  // child: Image.asset('images/banana.png'),
                ),
                const ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text(
                    'New task is to be comleted ! ',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                  subtitle: Text('Plant progress '),
                ),
                ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('Open'),
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
        Container(
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
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
            //color: Colors.purple[300],
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 20.0,
                  width: 100.0,
                  // child: Image.asset('images/banana.png'),
                ),
                const ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text(
                    'New task is to be comleted !',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                  subtitle: Text('Plant progress '),
                ),
                ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('Open'),
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
    );
  }
}
