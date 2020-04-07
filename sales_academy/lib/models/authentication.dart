import 'package:flutter/widgets.dart';

typedef UpdateLoginState(bool state);

class AuthenticationModel extends ChangeNotifier {
  bool _isAuthenticated;

  bool get isAuthenticated => _isAuthenticated;

  AuthenticationModel({bool isAuthenticated = false})
      : _isAuthenticated = isAuthenticated;

  void authenticate(bool login) {
    _isAuthenticated = login;
    notifyListeners();
  }
}
