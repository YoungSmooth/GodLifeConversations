import 'package:flutter/material.dart';
import 'package:god_life_conversations/responsive/dektop_folder/page_parts/connect_page_parts/connect_page_header.dart';
import 'package:god_life_conversations/responsive/dektop_folder/constant_parts/footnote.dart';

import '../page_parts/connect_page_parts/connect_body.dart';

class DesktopConnectPage extends StatefulWidget {
  const DesktopConnectPage({super.key});

  @override
  State<DesktopConnectPage> createState() => _DesktopConnectPageState();
}

class _DesktopConnectPageState extends State<DesktopConnectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: const [
              ConnectPageHeader(),
              SizedBox(
                height: 40,
              ),
              DesktopConnectBody(),
              FootNote(),
            ],
          ),
        ));
  }
}
