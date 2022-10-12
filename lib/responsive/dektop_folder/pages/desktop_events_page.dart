import 'package:flutter/material.dart';
import 'package:god_life_conversations/responsive/dektop_folder/constant_parts/footnote.dart';
import '../page_parts/events_page_parts/event_test.dart';
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
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: const [
              EventsPageHeader(),
              SizedBox(
                height: 40,
              ),
              EventsBody(),
              SizedBox(
                height: 40,
              ),
              FootNote(),
            ],
          ),
        ));
  }
}
