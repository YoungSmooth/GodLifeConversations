// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final int index;
  final Function(int?) onTap;
  const BottomBar({
    Key? key,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: index,
        onTap: onTap,
        selectedItemColor: Colors.purple,
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Serve'),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Event'),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Give'),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'About'),
        ]);
  }
}
