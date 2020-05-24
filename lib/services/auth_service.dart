//this class is use to connect with firebase auth service

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:grow_more/models/user.dart';
import 'package:grow_more/services/database_service.dart';
import 'package:grow_more/service_locator.dart';

class AuthService{

	final FirebaseAuth _firebaseAuth=FirebaseAuth.instance;
	final DatabaseService _databaseService=getIt<DatabaseService>();

	User _currentUser;

	User get currentUser => _currentUser;

	Future<bool> loginWithEmail({@required String email,@required String password})async{
		try{
			var authResult=await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
			await _populateCurrentUser(authResult.user);
			return authResult!=null;
		}catch(e){
			return false;
		}
	}

	Future<bool> signUpWithEmail({@required User user,@required String password})async{
		try{
			var authResult=await _firebaseAuth.createUserWithEmailAndPassword(email: user?.email, password: password);
			_currentUser=user;
			await _databaseService.createUser(user);
			return authResult!=null;
		}catch(e){
			return false;
		}
	}

	Future<bool> isUserLoggedIn() async {
		var user = await _firebaseAuth.currentUser();
		await _populateCurrentUser(user);
		return user != null;
	}

	Future signOut()async{
		return await _firebaseAuth.signOut();
	}

	Future _populateCurrentUser(FirebaseUser user) async {
		if (user != null) {
			_currentUser = await _databaseService.getUser(user.uid);
		}
	}
}

//class AuthService {
////instance (object)of firebase authentication- that allows to communicate
////with firebase autheticate service in backend
////@prm - _auth = object name
//	final FirebaseAuth _auth = FirebaseAuth.instance;
//
//	//create user object base on fire base user
//	User _userFromFirebaseUser(FirebaseUser user) {
////		return user != null ? User(user.uid) : null;
//		return null;
//	}
//
//// auth cahngings for user streaming
//
//	Stream<User> get user {
//		return _auth.onAuthStateChanged
//			.map((FirebaseUser user) => _userFromFirebaseUser(user));
//	}
//
//	//sign in anounimously
//	Future signInAnnon() async {
//		try {
//			AuthResult result = await _auth.signInAnonymously();
//			FirebaseUser user = result.user;
//			return _userFromFirebaseUser(user);
//		} catch (e) {
//			print(e.toString());
//			return null;
//		}
//	}
//
//	//sign with email and password
//	Future signInWithEmailAndPAssword(String email,
//		String password,) async {
//		try {
//			AuthResult result = await _auth.signInWithEmailAndPassword(
//				email: email, password: password);
//			FirebaseUser user = result.user;
//
//			// create new document for user with uid
//			await DatabaseService(uid: user.uid)
//				.updateUserData('user', 01122509111, 'beginner', 0);
//			return _userFromFirebaseUser(user);
//		} catch (e) {
//			print(e.toString());
//			return null;
//		}
//	}
//
//	//register with email and passwar
//	Future registerWithEmailAndPAssword(String email, String password,) async {
//		try {
//			AuthResult result = await _auth.createUserWithEmailAndPassword(
//				email: email, password: password);
//			FirebaseUser user = result.user;
//			return _userFromFirebaseUser(user);
//		} catch (e) {
//			print(e.toString());
//			return null;
//		}
//	}
//
//	//sign out
//	Future signOut() async {
//		try {
//			return _auth.signOut();
//		} catch (e) {
//			print(e.toString());
//			return null;
//		}
//	}
//}
