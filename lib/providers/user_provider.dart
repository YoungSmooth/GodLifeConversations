import 'package:flutter/material.dart';
import 'package:god_life_conversations/resources/auth_methods.dart';
import '../models/user.dart';

class UserProvider with ChangeNotifier {
  User _user = User(
    fullName: '',
    // email: '',
    // uid: '',
    photoUrl: '',
    username: '',
    bio: '',
    department: '',
    followers: [],
    following: [],
  );
  final AuthMethods _authMethods = AuthMethods();

  User get getUser => _user;

  Future<void> refreshUser() async {
    User user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }
}
