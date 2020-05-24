import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grow_more/models/plant.dart';
import 'package:grow_more/models/user.dart';

class DatabaseService {
  final CollectionReference _userCollection =
      Firestore.instance.collection('users');

  final CollectionReference _plantCollection =
      Firestore.instance.collection('plants');

  final StreamController<List<Plant>> _plantController =
      StreamController<List<Plant>>.broadcast();

  Future createUser(User user) async {
    try {
      await _userCollection.document(user?.id).setData(user.toJson());
    } catch (e) {
      return e.toString();
    }
  }

  Future<User> getUser(String id) async {
    try {
     return await _userCollection
          .document(id)
          .get()
          .then((value){
            User user=User.fromJson(value.data);
            print("user : "+user.toString());
            return user;
     });
    } catch (e) {
      return null;
    }
  }

  Stream<List<Plant>> getPlantList(){
    _plantCollection.snapshots().listen((event) {
      if(event.documents.isNotEmpty){
        var plantList=event.documents
            .map((e) => Plant.fromJson(e.data))
            .toList();

        _plantController.add(plantList);
      }
    });
    return _plantController.stream;
  }
}