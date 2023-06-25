import 'package:flutter/material.dart';

import '../../../resources/color_manager.dart';
import '../constant_parts/footnote.dart';
import '../page_parts/home_page_parts/connect_header.dart';
import '../page_parts/home_page_parts/events.dart';
import '../page_parts/home_page_parts/give.dart';
import '../page_parts/home_page_parts/header_and_background.dart';
import '../page_parts/home_page_parts/join_us.dart';
import '../page_parts/home_page_parts/messages_header.dart';
import '../page_parts/home_page_parts/serve_header.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorManager.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderBackground(),
            SizedBox(height: 40),
            JoinUs(),
            SizedBox(height: 40),
            SecondHeaderBackground(),
            SizedBox(height: 40),
            MessagesHeader(),
            SizedBox(height: 40),
            ServeHeader(),
            SizedBox(height: 40),
            Events(),
            SizedBox(height: 40),
            GiveHeader(),
            SizedBox(height: 40),
            FootNote(),
          ],
        ),
      ),
    );
  }
}
