import 'package:flutter/material.dart';

import '../../../resources/color_manager.dart';
import '../constant_parts/footnote.dart';
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
    return const Scaffold(
      backgroundColor: ColorManager.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ServePageHeader(),
            SizedBox(height: 40),
            ServeBody(),
            SizedBox(height: 40),
            FootNote(),
          ],
        ),
      ),
    );
  }
}
