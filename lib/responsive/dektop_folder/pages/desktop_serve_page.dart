import 'package:flutter/material.dart';
import 'package:god_life_conversations/responsive/dektop_folder/constant_parts/footnote.dart';
import '../page_parts/serve_page_parts/serve_body.dart';
import '../page_parts/serve_page_parts/serve_page_header.dart';

class DesktopServePage extends StatefulWidget {
  const DesktopServePage({super.key});

  @override
  State<DesktopServePage> createState() => _DesktopServePageState();
}

class _DesktopServePageState extends State<DesktopServePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: const [
              ServePageHeader(),
              SizedBox(
                height: 40,
              ),
              ServeBody(),
              SizedBox(
                height: 40,
              ),
              FootNote(),
            ],
          ),
        ));
  }
}
