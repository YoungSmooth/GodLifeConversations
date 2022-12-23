import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:god_life_conversations/responsive/mobile_folder/mobile_scaffold.dart';
import 'package:god_life_conversations/responsive/registration/sign_in.dart';

import '../../resources/auth_page.dart';
import '../dektop_folder/pages/desktop_home_page.dart';
import '../responsive_layout.dart';

class Landingpage extends StatefulWidget {
  const Landingpage({super.key});

  @override
  State<Landingpage> createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return const ResponsiveLayout(
              mobileScaffold: MobileScaffold(),
              tabletScaffold: MobileScaffold(),
              desktopScaffld: DesktopScaffold(),
            );
          } else {
            return const AuthPage();
          }
        }),
      ),
    );
  }
}
