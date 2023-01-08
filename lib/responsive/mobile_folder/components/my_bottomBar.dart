import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/user.dart' as model;
import '../../../providers/user_provider.dart';
import '../../../resources/color_manager.dart';
import '../../../resources/string_manager.dart';
import '../../../utilities.dart/colors.dart';

class BottomBar extends StatelessWidget {
  final int index;
  final Function(int?) onTap;
  const BottomBar({Key? key, required this.index, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    model.User user = Provider.of<UserProvider>(context).getUser;
    return BottomNavigationBar(
      currentIndex: index,
      onTap: onTap,
      selectedItemColor: mainColor,
      backgroundColor: ColorManager.transparent,
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
          label: StringManager.home,
        ),
        const BottomNavigationBarItem(
            icon: Icon(Icons.event_available_outlined),
            label: StringManager.events),
        const BottomNavigationBarItem(
            icon: Icon(Icons.assistant_direction_outlined),
            label: StringManager.serve),
        const BottomNavigationBarItem(
            icon: Icon(Icons.attach_money_outlined), label: StringManager.give),
        const BottomNavigationBarItem(
            icon: Icon(Icons.info_outline), label: StringManager.connect),
        // BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        BottomNavigationBarItem(
          icon: Container(
            padding: const EdgeInsets.only(top: 5),
            child: Center(
                child:
                    CircleAvatar(backgroundImage: NetworkImage(user.photoUrl))),
          ),
          label: '',
          backgroundColor: primaryColor,
        ),
      ],
    );
  }
}
