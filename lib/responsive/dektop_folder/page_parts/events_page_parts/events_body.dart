// ignore_for_file: public_member_api_docs, sort_constructors_first, depend_on_referenced_packages
// ignore_for_file: empty_constructor_bodies
import 'package:flutter/material.dart';
import 'package:list_timeline/custom_list_tracking.dart';

class EventsBody extends StatefulWidget {
  const EventsBody({super.key});

  @override
  State<EventsBody> createState() => _EventsBodyState();
}

class _EventsBodyState extends State<EventsBody> {
  List<DataModel> listExample = [];

  @override
  void initState() {
    listExample.add(DataModel(
      title: "Future Event",
      desc: "The power of fasting",
      dateTime: "10-10-2022",
    ));

    listExample.add(DataModel(
      title: "Ongoing Event",
      desc: "Dreams and Visions",
      dateTime: "10-10-2022",
    ));

    listExample.add(DataModel(
      title: "Past Event",
      desc: "Roses are red.",
      dateTime: "10-10-2022",
    ));

    listExample.add(DataModel(
      title: "Past Event",
      desc: "Keys to Growth",
      dateTime: "10-10-2022",
    ));

    listExample.add(DataModel(
      title: "Past Event",
      desc: "The Joy of the Lord",
      dateTime: "10-10-2022",
    ));

    listExample.add(DataModel(
      title: "Past Event",
      desc: "Roses are red.",
      dateTime: "10-10-2022",
    ));

    listExample.add(DataModel(
      title: "Past Event",
      desc: "Keys to Growth",
      dateTime: "10-10-2022",
    ));

    listExample.add(DataModel(
      title: "Past Event",
      desc: "The Joy of the Lord",
      dateTime: "10-10-2022",
    ));

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
              child: Text(
                'Go through our past, ongoig and future events to keep track of our activities and tag along.',
                textAlign: TextAlign.center,
              ),
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
                      color: Colors.purple.withOpacity(0.1),
                      border: Border.all(width: 0.7, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      e.title,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
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
                colorCircleTimeline: (listExample) =>
                    listExample.title == "Future Event"
                        ? Colors.yellow
                        : listExample.title == "Ongoing Event"
                            ? Colors.green
                            : Colors.grey,
                showLeftWidget: true,
                valueOfLeftSource: (e) => (e.dateTime),
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
  String dateTime;
  DataModel({
    required this.title,
    required this.desc,
    required this.dateTime,
  });
}
