import 'package:flutter/widgets.dart';
import 'package:grow_more/models/user.dart';
import 'package:grow_more/services/auth_service.dart';
import 'package:grow_more/service_locator.dart';

class AuthViewModel extends ChangeNotifier{

	final AuthService _authService=getIt<AuthService>();
	User get currentUser=>_authService.currentUser;

	Future<bool> login({@required String email,@required String password})async{
		return await _authService.loginWithEmail(email: email, password: password);
	}

	Future<bool> register({@required User user,@required String password})async{
		return await _authService.signUpWithEmail(user: user, password: password);
	}

	Future<void> signOut()async{
		return await _authService.signOut();
	}

	Future<bool> isUserLoggedIn()async{
		return await _authService.isUserLoggedIn();
	}
}