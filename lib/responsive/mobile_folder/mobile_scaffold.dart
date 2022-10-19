import 'package:flutter/material.dart';
import '../dektop_folder/page_parts/events_page_parts/events_body.dart';
import 'components/glass_Box.dart';
import 'components/my_bottomBar.dart';
import 'homePage_tabs/mobileHome.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  // bottom bar navigation
  int currentBottomIndex = 0;

  final screens = const [
    MobileHomePage(),
    EventsBody(),
    MobileHomePage(),
    EventsBody(),
    EventsBody(),
  ];

  void _bottomIndexChange(int? index) {
    setState(() {
      currentBottomIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.grey.shade200,
      bottomNavigationBar: GlassBox(
        child: BottomBar(
          index: currentBottomIndex,
          onTap: _bottomIndexChange
          // (index) => setState(() => currentBottomIndex = index!)
          ,
        ),
      ),
      body: IndexedStack(
        index: currentBottomIndex,
        children: screens,
      ),
    );
  }
}
