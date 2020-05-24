import 'package:flutter/material.dart';
import 'package:grow_more/models/plant.dart';

class PlantInfoTile extends StatelessWidget {
  final Plant plant;
  PlantInfoTile({this.plant});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.fromLTRB(20, 7, 20, 0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.green,
              ),
              title: Text('How Palnt ?'),
              subtitle: Text('Lets grow ${plant.planting} in your garden'),
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(20, 7, 20, 0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 5,
                backgroundColor: Colors.green,
              ),
              title: Text('Special Facts'),
              subtitle: Text('Lets grow ${plant.facts} in your garden'),
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(20, 7, 20, 0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.green,
              ),
              title: Text('How Watering ?'),
              subtitle: Text('Lets grow ${plant.watering} in your garden'),
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(20, 7, 20, 0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.green,
              ),
              title: Text('How Fetrtilizing ?'),
              subtitle: Text('Lets grow ${plant.fertilize} in your garden'),
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(20, 7, 20, 0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.green,
              ),
              title: Text('Pests'),
              subtitle: Text('Lets grow ${plant.pests} in your garden'),
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(20, 7, 20, 0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.green,
              ),
              title: Text('Deseases'),
              subtitle: Text('Lets grow ${plant.disease} in your garden'),
            ),
          ),
        ],
      ),
    );
  }
}
