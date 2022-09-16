import 'package:flutter/material.dart';
import 'package:god_life_conversations/responsive/dektop_folder/page_parts/connect_header.dart';
import 'package:god_life_conversations/responsive/dektop_folder/page_parts/events.dart';
import 'package:god_life_conversations/responsive/dektop_folder/page_parts/footnote.dart';
import 'package:god_life_conversations/responsive/dektop_folder/page_parts/give.dart';
import 'package:god_life_conversations/responsive/dektop_folder/page_parts/header_and_background.dart';
import 'package:god_life_conversations/responsive/dektop_folder/page_parts/join_us.dart';
import 'package:god_life_conversations/responsive/dektop_folder/page_parts/messages.dart';
import 'package:god_life_conversations/responsive/dektop_folder/page_parts/serve_header.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: const [
              HeaderBackground(),
              SizedBox(
                height: 40,
              ),
              JoinUs(),
              SizedBox(
                height: 40,
              ),
              SecondHeaderBackground(),
              SizedBox(
                height: 40,
              ),
              Messages(),
              SizedBox(
                height: 40,
              ),
              ServeHeader(),
              SizedBox(
                height: 40,
              ),
              Events(),
              SizedBox(
                height: 40,
              ),
              GiveHeader(),
              SizedBox(
                height: 40,
              ),
              FootNote(),
            ],
          ),
        ));
  }
}