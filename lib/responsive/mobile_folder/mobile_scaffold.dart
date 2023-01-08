import 'package:flutter/material.dart';
import 'package:god_life_conversations/responsive/mobile_folder/connectPage/mobile_connect_Page.dart';
import '../../resources/color_manager.dart';
import '../dektop_folder/page_parts/events_page_parts/events_body.dart';
import 'components/glass_box.dart';
import 'components/my_bottom_bar.dart';
import 'givePage/give_page.dart';
import 'homePage/mobile_home.dart';
import 'profilePage/profile_page.dart';
import 'servePage/serve_page.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  int _currentBottomIndex = 0;

  final _screens = const [
    MobileHomePage(),
    EventsBody(),
    ServePage(),
    GivePage(),
    MobileConnectPage(),
    ProfilePage()
  ];

  void _bottomIndexChange(int? index) {
    setState(() => _currentBottomIndex = index!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: ColorManager.greyS200,
      body: IndexedStack(index: _currentBottomIndex, children: _screens),
      bottomNavigationBar: GlassBox(
          child:
              BottomBar(index: _currentBottomIndex, onTap: _bottomIndexChange)),
    );
  }
}
