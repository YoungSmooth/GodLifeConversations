import 'package:flutter/material.dart';

import '../../../resources/color_manager.dart';
import '../constant_parts/footnote.dart';
import '../page_parts/about_page_parts/about_body.dart';
import '../page_parts/about_page_parts/about_page_header.dart';

class DesktopAboutPage extends StatefulWidget {
  const DesktopAboutPage({super.key});

  @override
  State<DesktopAboutPage> createState() => _DesktopAboutPageState();
}

class _DesktopAboutPageState extends State<DesktopAboutPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorManager.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AboutPageHeader(),
            SizedBox(height: 40),
            AboutBody(),
            SizedBox(height: 40),
            FootNote(),
          ],
        ),
      ),
    );
  }
}
