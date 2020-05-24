import 'package:flutter/material.dart';
import 'package:grow_more/models/plant.dart';

class PlantTile extends StatelessWidget {
  final Plant plant;
  PlantTile({this.plant});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20, 7, 20, 0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.green,
          ),
          title: Text(plant.plantName),
          subtitle: Text('Lets grow ${plant.plantName} in your garden'),
        ),
      ),
    );
  }
}
