// ignore_for_file: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:god_life_conversations/responsive/dektop_folder/pages/desktop_home_page.dart';
import 'package:god_life_conversations/responsive/responsive_layout.dart';
import 'package:god_life_conversations/responsive/screens/login_screen.dart';
import 'package:god_life_conversations/responsive/screens/signup_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'responsive/mobile_folder/mobile_scaffold.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyCtNB7s6PFiY_GhWrfKcadsnMQL5AoFPmw",
        appId: "1:631477663593:web:46d3f466ab396790516ff8",
        messagingSenderId: "631477663593",
        projectId: "godlifeconversations-6b007",
        storageBucket: "godlifeconversations-6b007.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(),
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.hasData) {
              return const ResponsiveLayout(
                mobileScaffold: MobileScaffold(),
                tabletScaffold: MobileScaffold(),
                // TabletScaffold(),
                desktopScaffld: DesktopScaffold(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('${snapshot.error}'),
              );
            }
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(color: Colors.purple),
            );
          }
          return const LoginScreen();
        },
      ),
    );
  }
}
