import 'package:flutter/material.dart';

import 'resources/string_manager.dart';

var myDefaultBackground = Colors.grey.shade300;
var linearColor = const LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [Color.fromRGBO(195, 20, 50, 1.0), Color.fromRGBO(36, 11, 54, 0.1)],
);

var myAppBar = AppBar(
  backgroundColor: Colors.grey.shade900,
);
var myDrawer = Drawer(
  width: 300,
  backgroundColor: Colors.grey.shade300,
  child: Column(
    children: const [
      DrawerHeader(
        child: CircleAvatar(
          radius: 5,
          backgroundColor: Colors.pink,
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

var sideColumn = Container(
  color: Colors.grey.shade300,
  child: Column(
    children: const [
      SizedBox(
        height: 300,
        width: 300,
        child: CircleAvatar(
          radius: 50,
          backgroundColor: Colors.green,
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
        title: Text(StringManager.giftCardSpaced),
      ),
    ],
  ),
);
