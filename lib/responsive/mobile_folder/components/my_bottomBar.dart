// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        iconSize: 30,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 10,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            // FaIcon(FontAwesomeIcons.houseUser ),
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.event_available_outlined), label: 'Events'),
          BottomNavigationBarItem(
              icon: Icon(Icons.assistant_direction_outlined), label: 'Serve'),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money_outlined), label: 'Give'),
          BottomNavigationBarItem(
              icon: Icon(Icons.info_outline), label: 'Connect'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ]);
  }
}
