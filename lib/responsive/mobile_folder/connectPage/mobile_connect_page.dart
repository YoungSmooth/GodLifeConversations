import 'package:flutter/material.dart';
import '../../../utilities/colors.dart';

import '../../../resources/string_manager.dart';
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
                      Tab(text: StringManager.connect),
                      Tab(text: StringManager.about),
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
