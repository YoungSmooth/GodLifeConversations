// ignore_for_file: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:god_life_conversations/responsive/responsive_layout.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'providers/user_provider.dart';
import 'resources/color_manager.dart';
import 'responsive/dektop_folder/pages/desktop_home_page.dart';
import 'responsive/mobile_folder/components/select_loginView.dart';
import 'responsive/mobile_folder/mobile_scaffold.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: ColorManager.white24,
        systemStatusBarContrastEnforced: true,
        statusBarIconBrightness: Brightness.dark),
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

      // primarySwatch: Colors.deepPurple,
      useMaterial3: true,
    );
  }
}
