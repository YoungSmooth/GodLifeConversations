// ignore: file_names

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:god_life_conversations/constants.dart';
import 'package:god_life_conversations/responsive/mobile_folder/dashboard.dart';

class MobileScaffold2 extends StatefulWidget {
  const MobileScaffold2({super.key});

  @override
  State<MobileScaffold2> createState() => _MobileScaffold2State();
}

class _MobileScaffold2State extends State<MobileScaffold2> {
  @override
  Widget build(BuildContext context) => ZoomDrawer(
        style: DrawerStyle.style4,
        angle: -12,
        slideWidth: MediaQuery.of(context).size.width * 0.65,
        borderRadius: 40,
        menuScreen: sideColumn,
        showShadow: true,
        drawerShadowsBackgroundColor: Colors.grey.shade300,
        // menuBackgroundColor: myDefaultBackground,
        mainScreen: const DashboadPage(),
      );
}
