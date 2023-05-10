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

InputDecoration kformDecoration = const InputDecoration(
  icon: Icon(Icons.tag_faces_rounded),
  iconColor: Colors.blue,
  labelStyle: TextStyle(
    fontSize: 14,
  ),
  focusColor: Colors.white,
  // contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(20.0),
    ),
  ),
  filled: true,
  fillColor: Colors.white,
  label: Padding(
    padding: EdgeInsets.only(left: 10),
    child: Text(
      'Full Name',
    ),
  ),
  focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(20.0),
      ),
      gapPadding: 15),
  border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(20.0),
      ),
      gapPadding: 2),
);
