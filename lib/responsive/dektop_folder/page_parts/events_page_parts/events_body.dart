import 'package:flutter/material.dart';
import 'package:list_timeline/custom_list_tracking.dart';

import '../../../../resources/color_manager.dart';
import '../../../../resources/string_manager.dart';

class EventsBody extends StatefulWidget {
  const EventsBody({super.key});

  @override
  State<EventsBody> createState() => _EventsBodyState();
}

class _EventsBodyState extends State<EventsBody> {
  List<DataModel> listExample = [];

  @override
  void initState() {
    listExample.addAll([
      DataModel(title: StringManager.futureEvent, desc: StringManager.futureEventBody1, date: StringManager.defaultDate1),
      DataModel(title: StringManager.ongoingEvent, desc: StringManager.ongoingEventBody1, date: StringManager.defaultDate1),
      DataModel(title: StringManager.pastEvent, desc: StringManager.pastEventBody1, date: StringManager.defaultDate1),
      DataModel(title: StringManager.pastEvent, desc: StringManager.pastEventBody2, date: StringManager.defaultDate1),
      DataModel(title: StringManager.pastEvent, desc: StringManager.pastEventBody3, date: StringManager.defaultDate1),
      DataModel(title: StringManager.pastEvent, desc: StringManager.pastEventBody1, date: StringManager.defaultDate1),
      DataModel(title: StringManager.pastEvent, desc: StringManager.pastEventBody2, date: StringManager.defaultDate1),
      DataModel(title: StringManager.pastEvent, desc: StringManager.pastEventBody3, date: StringManager.defaultDate1),
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(StringManager.eventPageBody1, textAlign: TextAlign.center),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: CustomListTracking<DataModel>(
                listItem: listExample,
                // valueTextOfTitle: (e) => e.title,
                // valueTextOfDesc: (listExample) => listExample.desc,
                customTitleWidget: (e) => Container(
                  decoration: BoxDecoration(
                    color: ColorManager.purpleOp0_1,
                    border: Border.all(width: 0.7, color: ColorManager.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      e.title,
                      style: const TextStyle(color: ColorManager.black),
                    ),
                  ),
                ),
                customDescWidget: (e) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 250,
                      width: 250,
                      child: Image.network(
                          'https://images.unsplash.com/photo-1502945015378-0e284ca1a5be?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fHBlcnNvbmFsJTIwYXNzaXN0YW50fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 8),
                      child: Text(e.desc),
                    ),
                  ],
                ),
                colorCircleTimeline: (listExample) => listExample.title == StringManager.futureEvent
                    ? ColorManager.yellow
                    : listExample.title == StringManager.ongoingEvent
                        ? ColorManager.green
                        : ColorManager.grey,
                showLeftWidget: true,
                valueOfLeftSource: (e) => (e.date),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DataModel {
  String title;
  String desc;
  String date;
  DataModel({
    required this.title,
    required this.desc,
    required this.date,
  });
}
