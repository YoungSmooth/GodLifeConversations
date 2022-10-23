// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:god_life_conversations/responsive/dektop_folder/pages/desktop_home_page.dart';
import 'package:god_life_conversations/responsive/responsive_layout.dart';
import 'package:god_life_conversations/responsive/tablet_folder/tablet_scaffold.dart';
import 'package:google_fonts/google_fonts.dart';
import 'responsive/mobile_folder/mobile_scaffold.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white24,
      systemStatusBarContrastEnforced: true,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(),
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffld: DesktopScaffold(),
      ),
    );
  }
}
