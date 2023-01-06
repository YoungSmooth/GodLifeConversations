import 'package:flutter/material.dart';
import 'package:god_life_conversations/responsive/dektop_folder/constant_parts/footnote.dart';

import '../page_parts/messages_page_parts/message_page_header.dart';
import '../page_parts/messages_page_parts/messages_page_body.dart';

class DesktopMessagesPage extends StatefulWidget {
  const DesktopMessagesPage({super.key});

  @override
  State<DesktopMessagesPage> createState() => _DesktopMessagesPageState();
}

class _DesktopMessagesPageState extends State<DesktopMessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: const [
              MessagesPageHeader(),
              SizedBox(
                height: 40,
              ),
              // AudioSlides(),
              DesktopMessagesBody(),
              FootNote(),
            ],
          ),
        ));
  }
}
