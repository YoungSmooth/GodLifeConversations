import 'package:flutter/material.dart';
import 'package:god_life_conversations/models/user.dart' as model;
import 'package:god_life_conversations/providers/user_provider.dart';
import 'package:god_life_conversations/responsive/mobile_folder/givePage/give_page.dart';
import 'package:god_life_conversations/responsive/mobile_folder/profilePage/profile_page.dart';

import '../dektop_folder/page_parts/events_page_parts/events_body.dart';
import 'components/glass_Box.dart';
import 'components/my_bottomBar.dart';
import 'connectPage/mobileConnect_Page.dart';
import 'homePage/mobileHome.dart';
import 'servePage/serve_page.dart';
import 'package:provider/provider.dart';

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
    ServePage(),
    GivePage(),
    MobileConnectPage(),
    ProfilePage(),
  ];

  void _bottomIndexChange(int? index) {
    setState(() {
      currentBottomIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    model.User user = Provider.of<UserProvider>(context).getUser!;
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
