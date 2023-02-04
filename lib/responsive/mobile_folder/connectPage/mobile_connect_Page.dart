// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:god_life_conversations/utilities.dart/colors.dart';

import 'about_page.dart';
import 'connect_page.dart';

class MobileConnectPage extends StatelessWidget {
  const MobileConnectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          // color: Colors.blueGrey,
          height: 670,
          child: DefaultTabController(
            length: 2,
            child: Scaffold(
              // extendBody: true,
              body: Column(
                children: const [
                  TabBar(
                    labelColor: mainColor,
                    tabs: [
                      Tab(
                        text: 'Connect',
                      ),
                      Tab(
                        text: 'About',
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        ConnectPage(),
                        AboutPage(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
