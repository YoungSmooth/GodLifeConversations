// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:god_life_conversations/responsive/dektop_folder/pages/desktop_home_page.dart';
import 'package:god_life_conversations/responsive/mobile_folder/mobile_scaffold%20copy.dart';
import 'package:god_life_conversations/responsive/responsive_layout.dart';
import 'package:god_life_conversations/responsive/tablet_folder/tablet_scaffold.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.montserratTextTheme()),
      debugShowCheckedModeBanner: false,
      home: const ResponsiveLayout(
        mobileScaffold: MobileScaffold2(),
        tabletScaffold: TabletScaffold(),
        desktopScaffld: DesktopScaffold(),
      ),
    );
  }
}
