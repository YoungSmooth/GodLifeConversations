import 'package:flutter/material.dart';
import 'package:god_life_conversations/responsive/dektop_folder/constant_parts/footnote.dart';
import '../page_parts/serve_page_parts/serve_page_header.dart';

class DesktopGivePage extends StatefulWidget {
  const DesktopGivePage({super.key});

  @override
  State<DesktopGivePage> createState() => _DesktopGivePageState();
}

class _DesktopGivePageState extends State<DesktopGivePage> {
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
              // AudioSlides(),
              FootNote(),
            ],
          ),
        ));
  }
}
