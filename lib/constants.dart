import 'package:flutter/material.dart';

import 'resources/color_manager.dart';
import 'resources/string_manager.dart';

Color myDefaultBackground = ColorManager.greyS300;
LinearGradient linearColor = const LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [Color.fromRGBO(195, 20, 50, 1.0), Color.fromRGBO(36, 11, 54, 0.1)],
);

Drawer myDrawer = Drawer(
  width: 300,
  child: Column(
    children: const [
      DrawerHeader(
        child: CircleAvatar(
          radius: 5,
          backgroundColor: ColorManager.pink,
          child: Icon(Icons.favorite),
        ),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text(StringManager.homeSpaced),
      ),
      ListTile(
        leading: Icon(Icons.card_giftcard),
        title: Text(StringManager.giftCardSpaced),
      ),
      ListTile(
        leading: Icon(Icons.messenger),
        title: Text(StringManager.messengerSpaced),
      ),
      ListTile(
        leading: Icon(Icons.more),
        title: Text(StringManager.moreSpaced),
      ),
    ],
  ),
);

Container sideColumn = Container(
  color: ColorManager.greyS300,
  child: Column(
    children: const [
      SizedBox(
        height: 300,
        width: 300,
        child: CircleAvatar(
          radius: 50,
          backgroundColor: ColorManager.green,
          child: Icon(Icons.favorite),
        ),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text(StringManager.homeSpaced),
      ),
      ListTile(
        leading: Icon(Icons.card_giftcard),
        title: Text(StringManager.giftCardSpaced),
      ),
      ListTile(
        leading: Icon(Icons.messenger),
        title: Text(StringManager.messengerSpaced),
      ),
      ListTile(
        leading: Icon(Icons.more),
        title: Text(StringManager.moreSpaced),
      ),
    ],
  ),
);
