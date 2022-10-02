import 'package:flutter/material.dart';
import 'package:god_life_conversations/responsive/dektop_folder/constant_parts/footnote.dart';
import '../page_parts/serve_page_parts/serve_page_header.dart';

class DesktopAboutPage extends StatefulWidget {
  const DesktopAboutPage({super.key});

  @override
  State<DesktopAboutPage> createState() => _DesktopAboutPageState();
}

class _DesktopAboutPageState extends State<DesktopAboutPage> {
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
