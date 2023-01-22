// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:god_life_conversations/resources/color_manager.dart';
import 'package:intl/intl.dart';

class FeedCard extends StatelessWidget {
  final snap;
  const FeedCard({super.key, required this.snap});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Feed Image header section
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
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
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: CircleAvatar(
                            radius: 18,
                            backgroundImage: NetworkImage(snap['profileimage']),
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
                                child: Text(snap['username'],
                                    style: const TextStyle(
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
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => Dialog(
                                child: ListView(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 16,
                                  ),
                                  shrinkWrap: true,
                                  children: [
                                    'Delete',
                                  ]
                                      .map(
                                        (e) => InkWell(
                                          onTap: null,
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 12, horizontal: 16),
                                            child: Text(e),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                            );
                          },
                          icon: const Icon(Icons.more_vert_outlined)),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.15,
              ),
            ],
          ),
        ),

        // Feed Image section
        SizedBox(
          width: double.infinity,
          child: Image.network(
            snap['postUrl'],
          ),
        ),

        // Feed Image comment section
        Row(
          children: const [
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.favorite_outline,
              ),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.mode_comment_outlined,
              ),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.speed_outlined,
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.bookmark_border_outlined,
                  ),
                ),
              ),
            ),
          ],
        ),

        // Feed Image Description section
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DefaultTextStyle(
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                child: Text(
                  '${snap['likes'].length} likes',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(
                  top: 8,
                  bottom: 8,
                ),
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(color: ColorManager.black),
                    children: [
                      TextSpan(
                        text: snap['username'],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(
                        text: ' ',
                      ),
                      TextSpan(
                        text: snap['description'],
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: null,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: const Text(
                    'View all 4567 comments',
                    style: TextStyle(
                      fontSize: 14,
                      // color: ColorManager.grey,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  DateFormat.yMMMd().format(
                    snap['datePublished'].toDate(),
                  ),
                  style:
                      const TextStyle(fontSize: 10, color: ColorManager.grey),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
