import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../../../resources/color_manager.dart';
import '../../../resources/string_manager.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: FixedTimeline.tileBuilder(
          theme: TimelineThemeData(color: ColorManager.black),
          builder: TimelineTileBuilder.connectedFromStyle(
            contentsAlign: ContentsAlign.alternating,
            oppositeContentsBuilder: (context, index) => const Padding(padding: EdgeInsets.all(8.0), child: Text(StringManager.details)),
            contentsBuilder: (context, index) => Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.asset('lib/assets/wb1.jpg', fit: BoxFit.cover, height: 80, width: 80),
                    const Text(StringManager.contents),
                  ],
                ),
              ),
            ),
            connectorStyleBuilder: (context, index) => ConnectorStyle.solidLine,
            indicatorStyleBuilder: (context, index) => IndicatorStyle.outlined,
            itemCount: 10,
          ),
        ),
      ),
    );
  }
}
