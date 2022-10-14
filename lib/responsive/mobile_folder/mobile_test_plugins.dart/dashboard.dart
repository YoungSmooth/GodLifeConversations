import 'package:flutter/material.dart';
import 'package:god_life_conversations/constants.dart';
import 'package:god_life_conversations/responsive/mobile_folder/mobile_test_plugins.dart/menu_widget.dart';
import 'package:god_life_conversations/utilities.dart/my_box.dart';
import 'package:god_life_conversations/utilities.dart/my_tile.dart';

class DashboadPage extends StatefulWidget {
  const DashboadPage({super.key});

  @override
  State<DashboadPage> createState() => _DashboadPageState();
}

class _DashboadPageState extends State<DashboadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const MenuWidget(),
        backgroundColor: Colors.black,
        title: const Text('Home'),
      ),
      backgroundColor: myDefaultBackground,
      drawer: myDrawer,
      body: Column(
        children: [
          // 4 box on the top
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return const MyBox();
                },
              ),
            ),
          ),
          // tiles below
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const MyTile();
              },
            ),
          ),
        ],
      ),
    );
  }
}
