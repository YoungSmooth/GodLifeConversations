import 'package:flutter/material.dart';

import '../../../resources/color_manager.dart';
import '../constant_parts/footnote.dart';
import '../page_parts/events_page_parts/events_body.dart';
import '../page_parts/events_page_parts/events_page_header.dart';

class DesktopEventsPage extends StatefulWidget {
  const DesktopEventsPage({super.key});

  @override
  State<DesktopEventsPage> createState() => _DesktopEventsPageState();
}

class _DesktopEventsPageState extends State<DesktopEventsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorManager.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            EventsPageHeader(),
            SizedBox(height: 40),
            EventsBody(),
            SizedBox(height: 40),
            FootNote(),
          ],
        ),
      ),
    );
  }
}
