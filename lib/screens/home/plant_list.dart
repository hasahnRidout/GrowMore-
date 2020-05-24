import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:grow_more/models/plant.dart';
import 'package:grow_more/screens/home/plant_details.dart';
import 'package:grow_more/screens/home/plant_progress.dart';
import 'package:grow_more/viewmodels/home_viewmodel.dart';
import 'package:provider/provider.dart';

// import 'package:provider/provider.dart';
// import 'package:grow_more/models/plant.dart';
// import 'package:grow_more/screens/home/plant_tile.dart';
// import 'package:grow_more/models/plant.dart';

class PlantList extends StatefulWidget {
  final CollectionReference plantCollection =
      Firestore.instance.collection('plants');

  @override
  _PlantListState createState() => _PlantListState();
}

class _PlantListState extends State<PlantList> {
  /// second option made
  @override
  Widget build(BuildContext context) {
    return Selector<HomeViewModel, List<Plant>>(
        selector: (context, model) => model.plantList,
        builder: (context, plants, child) {
          return ListView.builder(
              itemCount: plants.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                    child: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Container(
                            margin:
                            new EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
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
                                child: Column(
                                    children: <Widget>[
                                        new ListTile(
                                            leading: CircleAvatar(
                                                radius: 20,
                                                backgroundColor: Colors.green[50],
                                                backgroundImage: AssetImage(
                                                    'assets/images/dashboardImages/plant.png'),
                                            ),
                                            title: new Text(plants[index].plantName),
                                            subtitle: Text(
                                                'Lets grow ${plants[index].plantName} in your garden'),
                                        ),
                      ButtonBar(
                        children: <Widget>[
//                          FlatButton(
//                            child: const Text('START'),
//                            onPressed: () {/* ... */},
//                          ),
                          FlatButton(
                            child: const Text('PROGRESS'),
                            onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PlantProgress()));
                            },
                          ),
                        ],
                      ),
                                    ],
                                ),
                                // child: new ListTile(
                                // leading: CircleAvatar(
                                //   radius: 20,
                                //   backgroundColor: Colors.green[50],
                                //   backgroundImage:
                                //       AssetImage('assets/images/dashboardImages/plant.png'),
                                // ),
                                // title: new Text(document['plantName']),
                                // subtitle:
                                //     Text('Lets grow ${document['plantName']} in your garden'),

                                //   // title: new Text(document['plantName']),
                                //   // subtitle: new Text(document['pests']),
                                // ),
                            ),
                        ),
                    ),
                    onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PlantDetails(plant: plants[index],)));
                    },
                );
                },);
              });

//    return new StreamBuilder(
//      stream: Firestore.instance.collection('plants').snapshots(),
//      //stream: Firestore.instance.collection('plants').snapshots,
//      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//        if (!snapshot.hasData) return new Text('Loading...');
//        return new ListView(
//          children: snapshot.data.documents.map((document) {
//            return Padding(
//              padding: EdgeInsets.only(top: 10.0),
//              child: Container(
//                margin:
//                    new EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
//                decoration: BoxDecoration(
//                  borderRadius: BorderRadius.circular(20),
//                  color: Colors.white,
//                  boxShadow: [
//                    BoxShadow(
//                      color: Color.fromRGBO(196, 135, 198, .3),
//                      blurRadius: 10,
//                      offset: Offset(0, 10),
//                    )
//                  ],
//                ),
//                child: Card(
//                  shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(20.0),
//                  ),
//                  child: Column(
//                    children: <Widget>[
//                      new ListTile(
//                        leading: CircleAvatar(
//                          radius: 20,
//                          backgroundColor: Colors.green[50],
//                          backgroundImage: AssetImage(
//                              'assets/images/dashboardImages/plant.png'),
//                        ),
//                        title: new Text(document['plantName']),
//                        subtitle: Text(
//                            'Lets grow ${document['plantName']} in your garden'),
//                      ),
////                      ButtonBar(
////                        children: <Widget>[
////                          FlatButton(
////                            child: const Text('START'),
////                            onPressed: () {/* ... */},
////                          ),
////                          FlatButton(
////                            child: const Text('PROGRESS'),
////                            onPressed: () {/* ... */},
////                          ),
////                        ],
////                      ),
//                    ],
//                  ),
//                  // child: new ListTile(
//                  // leading: CircleAvatar(
//                  //   radius: 20,
//                  //   backgroundColor: Colors.green[50],
//                  //   backgroundImage:
//                  //       AssetImage('assets/images/dashboardImages/plant.png'),
//                  // ),
//                  // title: new Text(document['plantName']),
//                  // subtitle:
//                  //     Text('Lets grow ${document['plantName']} in your garden'),
//
//                  //   // title: new Text(document['plantName']),
//                  //   // subtitle: new Text(document['pests']),
//                  // ),
//                ),
//              ),
//            );
//          }).toList(),
//        );
//      },
//
//      //     return ListView.builder(
//      //   itemCount: plants.length,
//      //   itemBuilder: (context, index) {
//      //     return PlantTile(plant: plants[index]);
//      //   },
//      // );
//    );
  }

// @override
// Widget build(BuildContext context) {
//   final plants = Provider.of<List<Plant>>(context);
//   // print(plants);
//   // for (var doc in plants.documents) {
//   //   print(doc.data);
//   // }
//   plants.forEach((plant) {
//     print(plant.plantName);
//     print(plant.facts);
//     print(plant.fertilize);
//     print(plant.pests);
//     print(plant.planting);
//     print(plant.watering);
//     print(plant.disease);
//     print(plant.crop);
//     print(plant.priority);
//   });

// return ListView.builder(
//   itemCount: plants.length,
//   itemBuilder: (context, index) {
//     return PlantTile(plant: plants[index]);
//   },
// );
// }
}


