import 'package:get_it/get_it.dart';
import 'package:grow_more/services/auth_service.dart';
import 'package:grow_more/services/database_service.dart';
import 'package:grow_more/viewmodels/auth_viewmodel.dart';

GetIt getIt = GetIt.instance;

void setupServiceLocator(){
	getIt.registerLazySingleton(() => AuthService());
	getIt.registerLazySingleton(() => AuthViewModel());
	getIt.registerLazySingleton(() => DatabaseService());
}