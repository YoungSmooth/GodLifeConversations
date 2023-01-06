import 'package:flutter/material.dart';
import 'package:god_life_conversations/constants.dart';
import 'package:god_life_conversations/utilities/my_box.dart';
import 'package:god_life_conversations/utilities/my_tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: myDefaultBackground,
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                itemBuilder: (context, index) => const MyBox(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(itemCount: 5, itemBuilder: (context, index) => const MyTile()),
          ),
        ],
      ),
    );
  }
}
