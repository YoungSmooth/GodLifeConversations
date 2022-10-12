// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:list_timeline/custom_list_tracking.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<DataModel> listExample = [];

  @override
  void initState() {
    listExample.add(DataModel(
        title: "Approved",
        desc: "This task was approved by your manager",
        dateTime: DateTime(2022, 08, 10).toString()));

    listExample.add(DataModel(
        title: "Warning",
        desc: "This task was got yellow notice by your manager",
        dateTime: DateTime(2022, 08, 12).toString()));

    listExample.add(DataModel(
        title: "Rejected",
        desc: "This task was rejected by your manager",
        dateTime: DateTime(2022, 08, 23).toString()));
    super.initState();
  }

  // String _dateFormat(DateTime date) {
  //   return DateFormat("dd/MM/yyyy").format(date);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Timeline Usage"),
      ),
      //This below codes are the simple example how to use the package
      // if you wanna custom widget, just find the following attribute :
      // 1. customLeftWidget: (e)=>Container(),
      // 2. customTitleWidget: (e) => Container(),
      // 3. customDescWidget: (e) => Container(),

      body: Container(
          margin: const EdgeInsets.all(10),
          child: CustomListTracking<DataModel>(
            listItem: listExample,
            valueTextOfTitle: (e) => e.title,
            valueTextOfDesc: (e) => e.desc,
            colorCircleTimeline: (e) => e.title == "Warning"
                ? Colors.yellow
                : e.title == "Rejected"
                    ? Colors.red
                    : Colors.blue,
            showLeftWidget: true,
            // valueOfLeftSource: (e) => _dateFormat(e.dateTime),
          )),
    );
  }
}

class DataModel {
  String title;
  String desc;
  String dateTime;
  DataModel({
    required this.title,
    required this.desc,
    required this.dateTime,
  });
}
