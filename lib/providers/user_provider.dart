import 'package:flutter/material.dart';
import 'package:god_life_conversations/resources/auth_methods.dart';
import '../models/user.dart';

class UserProvider extends ChangeNotifier {
  User _user = const User();

  final AuthMethods _authMethods = AuthMethods();

  User get getUser => _user;

  Future<void> refreshUser() async {
    User user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }
}
