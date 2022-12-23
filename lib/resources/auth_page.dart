import 'package:flutter/material.dart';
import '../responsive/mobile_folder/mobile_scaffold.dart';
import '../responsive/registration/register_page.dart';
import '../responsive/registration/sign_in.dart';
import '../responsive/registration/signup_screen.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;

  void toggleScreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return SignIn(showRegisterpage: toggleScreens);
    } else {
      RegisterPage(showLoginPage: toggleScreens);
    }
    return const SignUpScreen();
  }
}
