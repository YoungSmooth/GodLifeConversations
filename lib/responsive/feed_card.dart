import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:god_life_conversations/resources/color_manager.dart';

import '../utilities.dart/colors.dart';

class FeedCard extends StatelessWidget {
  const FeedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.15,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.70,
              decoration: BoxDecoration(
                border: Border.all(color: ColorManager.greyS300),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: mainColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ConstrainedBox(
                              constraints: const BoxConstraints(
                                  minWidth: 0, maxWidth: 120),
                              child: const Text('Joseph Nwode three',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      overflow: TextOverflow.ellipsis)),
                            ),
                            const Text(
                              'Usher',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.verified_outlined,
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: IconButton(
                        onPressed: null, icon: Icon(Icons.more_vert_outlined)),
                  )
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.15,
            ),
          ],
        ),
      ],
    );
  }
}
