import 'package:flutter/material.dart';

import '../constant_parts/footnote.dart';
import '../page_parts/give_page_parts/give_body.dart';
import '../page_parts/give_page_parts/give_page_header.dart';

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
            GivePageHeader(),
            SizedBox(height: 40),
            GiveBody(),
            SizedBox(height: 40),
            FootNote(),
          ],
        ),
      ),
    );
  }
}
