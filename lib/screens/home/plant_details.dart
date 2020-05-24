import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grow_more/models/plant.dart';
import 'package:grow_more/screens/home/plant_info_tile.dart';

class PlantDetails extends StatelessWidget {
  final Plant plant;

  PlantDetails({Key key, @required this.plant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(plant.plantName),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            // height: 100,
            margin: new EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
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
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/dashboardImages/shovel.png'),
                    radius: 20,
                    backgroundColor: Colors.white,
                  ),
                  title: Text('How Palnt ?'),
                  subtitle: Text(plant.planting),
                ),
              ),
            ),
          ),
          Container(
            // height: 100,
            margin: new EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
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
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    backgroundImage:
                        AssetImage('assets/images/dashboardImages/cat.png'),
                  ),
                  title: Text('Special Facts ?'),
                  subtitle: Text(plant.facts),
                ),
              ),
            ),
          ),
          Container(
            // height: 100,
            margin: new EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
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
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/images/dashboardImages/watering-can.png'),
                    radius: 20,
                    backgroundColor: Colors.white,
                  ),
                  title: Text('Watering'),
                  subtitle: Text(plant.watering),
                ),
              ),
            ),
          ),
          Container(
            // height: 100,
            margin: new EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
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
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/dashboardImages/shovel.png'),
                    radius: 20,
                    backgroundColor: Colors.white,
                  ),
                  title: Text('How Fertilizing ?'),
                  subtitle: Text(plant.fertilize),
                ),
              ),
            ),
          ),
          Container(
            // height: 100,
            margin: new EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
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
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/dashboardImages/bug.png'),
                    radius: 20,
                    backgroundColor: Colors.white,
                  ),
                  title: Text('Pests control '),
                  subtitle: Text(plant.pests),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
