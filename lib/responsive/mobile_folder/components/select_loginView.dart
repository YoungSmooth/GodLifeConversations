import 'package:flutter/material.dart';

import '../../dektop_folder/pages/desktop_home_page.dart';
import '../../registration/login_screen.dart';

class SelectFittedLogin extends StatefulWidget {
  const SelectFittedLogin({super.key});

  @override
  State<SelectFittedLogin> createState() => _SelectFittedLoginState();
}

class _SelectFittedLoginState extends State<SelectFittedLogin> {
  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1000;

  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 1000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: (isDesktop(context))
            ? const DesktopScaffold()
            : const LoginScreen());
  }
}
