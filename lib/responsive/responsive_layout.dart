// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:god_life_conversations/providers/user_provider.dart';
import 'package:provider/provider.dart';

class ResponsiveLayout extends StatefulWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffld;

  const ResponsiveLayout({
    super.key,
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffld,
  });

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  void initState() {
    super.initState();
    addData();
  }

  addData() async {
    UserProvider userProvider = Provider.of(context, listen: false);
    await userProvider.refreshUser();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return widget.mobileScaffold;
        } else if (constraints.maxWidth < 1000) {
          return widget.tabletScaffold;
        } else {
          return widget.desktopScaffld;
        }
      },
    );
  }
}
