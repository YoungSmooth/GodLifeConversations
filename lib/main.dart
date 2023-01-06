// ignore_for_file: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:god_life_conversations/providers/user_provider.dart';
import 'package:god_life_conversations/responsive/dektop_folder/pages/desktop_home_page.dart';
import 'package:god_life_conversations/responsive/mobile_folder/components/select_loginView.dart';
import 'package:god_life_conversations/responsive/responsive_layout.dart';
import 'package:god_life_conversations/responsive/registration/login_screen.dart';
import 'package:god_life_conversations/responsive/registration/signup_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'providers/user_provider.dart';
import 'resources/color_manager.dart';
import 'responsive/dektop_folder/pages/desktop_home_page.dart';
import 'responsive/mobile_folder/components/select_login_view.dart';
import 'responsive/registration/landing_page.dart';
import 'responsive/mobile_folder/mobile_scaffold.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
// import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyD6XgPt1u8aJK03Y7OGXnudH6jvY9qu1Og",
        appId: "1:1093664415469:web:e824ef033d3ed0496ab6e4",
        messagingSenderId: "1093664415469",
        projectId: "glc-main-125d7",
        storageBucket: "glc-main-125d7.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: ColorManager.white24,
        systemStatusBarContrastEnforced: true,
        statusBarIconBrightness: Brightness.dark),
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserProvider(),
        ),
      ],
      child: MaterialApp(
        theme: lightTheme(),
        darkTheme: darkTheme(),
        debugShowCheckedModeBanner: false,
        home:
            // const Landingpage()
            StreamBuilder(
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
                child: CircularProgressIndicator(color: ColorManager.purple),
              );
            }
            return const SelectFittedLogin();
          },
        ),
      ),
    );
  }

  ThemeData darkTheme() {
    return ThemeData(
      colorSchemeSeed: ColorManager.deepPurple,
      brightness: Brightness.dark,
      useMaterial3: true,
    );
  }

  ThemeData lightTheme() {
    return ThemeData(
      colorSchemeSeed: Colors.deepPurple,
      buttonColor: Colors.black,
      brightness: Brightness.light,
      textTheme: GoogleFonts.montserratTextTheme(),
      scaffoldBackgroundColor: ColorManager.greyS100,
      appBarTheme: AppBarTheme(
        backgroundColor: ColorManager.greyS900,
      ),
      drawerTheme: DrawerThemeData(backgroundColor: ColorManager.greyS300),
      // primarySwatch: Colors.deepPurple,
      useMaterial3: true,
    );
  }
}
