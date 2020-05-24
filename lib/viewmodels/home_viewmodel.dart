import 'package:flutter/foundation.dart';
import 'package:grow_more/models/plant.dart';
import 'package:grow_more/service_locator.dart';
import 'package:grow_more/services/database_service.dart';

class HomeViewModel extends ChangeNotifier {
  final DatabaseService _databaseService = getIt<DatabaseService>();

  List<Plant> _plantList;

  List<Plant> get plantList => _plantList;

  HomeViewModel(){
  	_databaseService.getPlantList().listen((event) {
  		_plantList=event;
		notifyListeners();
	});
  }
}
