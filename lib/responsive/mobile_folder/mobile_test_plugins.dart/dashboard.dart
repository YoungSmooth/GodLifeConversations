import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../resources/string_manager.dart';
import '../../../utilities/my_box.dart';
import '../../../utilities/my_tile.dart';
import '../mobile_test_plugins.dart/menu_widget.dart';

class DashboadPage extends StatefulWidget {
  const DashboadPage({super.key});

  @override
  State<DashboadPage> createState() => _DashboadPageState();
}

class _DashboadPageState extends State<DashboadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const MenuWidget(), backgroundColor: Colors.black, title: const Text(StringManager.home)),
      backgroundColor: myDefaultBackground,
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (context, index) => const MyBox()
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
