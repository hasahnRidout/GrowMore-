import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
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
                  //mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    // Align(
                    // alignment: Alignment.topLeft,
                    // child:
                    Container(
                      height: 300.0,
                      width: 300.0,
                      child: Image.asset(
                          'assets/images/dashboardImages/garden.png'),
                      // ),
                    ),
                    const ListTile(
                      title: Text(
                        'How grow plants',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      subtitle: Text(
                          'Conservation will share tips and tricks from our publication ‘A Guide to Eco Friendly Home Gardening’ to get you started – with everything from how to prepare your soil for planting, to making your own natural pesticides and repellents to keep the bugs at bay!'),
                    ),
                    ButtonBar(
                      children: <Widget>[],
                    ),
                  ],
                ),
              ),
            ),
            Container(
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
                  //mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    // Align(
                    // alignment: Alignment.topLeft,
                    // child:
                    Container(
                      height: 300.0,
                      width: 300.0,
                      child: Image.asset(
                          'assets/images/dashboardImages/dashboard.png'),
                      // ),
                    ),
                    const ListTile(
                      title: Text(
                        'How grow plants - Tip 2',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      subtitle: Text(
                          'Conservation will share tips and tricks from our publication ‘A Guide to Eco Friendly Home Gardening’ to get you started – with everything from how to prepare your soil for planting, to making your own natural pesticides and repellents to keep the bugs at bay!'),
                    ),
                    ButtonBar(
                      children: <Widget>[],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
