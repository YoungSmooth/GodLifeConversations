import 'package:flutter/material.dart';
import 'package:god_life_conversations/models/user.dart' as model;
import 'package:god_life_conversations/providers/user_provider.dart';
import 'package:provider/provider.dart';

import '../../../utilities.dart/colors.dart';

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
    model.User user = Provider.of<UserProvider>(context).getUser;
    return BottomNavigationBar(
      currentIndex: index,
      onTap: onTap,
      selectedItemColor: mainColor,
      backgroundColor: Colors.transparent,
      iconSize: 30,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedFontSize: 12,
      unselectedFontSize: 10,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      items: [
        const BottomNavigationBarItem(
          // FaIcon(FontAwesomeIcons.houseUser ),
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Home',
        ),
        const BottomNavigationBarItem(icon: Icon(Icons.event_available_outlined), label: 'Events'),
        const BottomNavigationBarItem(icon: Icon(Icons.assistant_direction_outlined), label: 'Serve'),
        const BottomNavigationBarItem(icon: Icon(Icons.attach_money_outlined), label: 'Give'),
        const BottomNavigationBarItem(icon: Icon(Icons.info_outline), label: 'Connect'),
        // BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        BottomNavigationBarItem(
          icon: Container(
            padding: const EdgeInsets.only(top: 5),
            child: Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  user.photoUrl,
                ),
              ),
            ),
          ),
          label: '',
          backgroundColor: primaryColor,
        ),
      ],
    );
  }
}
