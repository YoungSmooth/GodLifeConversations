// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:god_life_conversations/resources/color_manager.dart';
import 'package:god_life_conversations/resources/firestore_methods.dart';
import 'package:god_life_conversations/responsive/mobile_folder/homePage/comment.dart';
import 'package:god_life_conversations/utilities/utils.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'package:firebase_auth/firebase_auth.dart';
import '../models/user.dart' as model;
import '../providers/user_provider.dart';
import 'like_animation.dart';
import 'mobile_folder/profilePage/profile_page.dart';

class FeedCard extends StatefulWidget {
  final snap;
  const FeedCard({super.key, required this.snap});

  @override
  State<FeedCard> createState() => _FeedCardState();
}

class _FeedCardState extends State<FeedCard> {
  bool isLikeAnimating = false;
  int commentLength = 0;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  void initState() {
    super.initState();
    getComments();
  }

  void getComments() async {
    try {
      QuerySnapshot snap = await FirebaseFirestore.instance
          .collection('feedposts')
          .doc(widget.snap['postId'])
          .collection('comments')
          .get();
      commentLength = snap.docs.length;
    } catch (e) {
      showSnackBar(e.toString(), context);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final model.User user = Provider.of<UserProvider>(context).getUser;
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
                          child: InkWell(
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ProfilePage(
                                  uid: widget.snap['uid'],
                                ),
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 18,
                              backgroundImage:
                                  NetworkImage(widget.snap['profileimage']),
                            ),
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
                                child: InkWell(
                                  onTap: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => ProfilePage(
                                        uid: widget.snap['uid'],
                                      ),
                                    ),
                                  ),
                                  child: Text(widget.snap['username'],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          overflow: TextOverflow.ellipsis)),
                                ),
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
                                          onTap: () async {
                                            FirestoreMethods().deletePost(
                                                widget.snap['postId']);
                                            Navigator.of(context).pop();
                                          },
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
        GestureDetector(
          onDoubleTap: () async {
            // await FirestoreMethods().likePost();
            await FirestoreMethods().likePost(
              widget.snap['postId'],
              _auth.currentUser!.uid,
              widget.snap['likes'],
            );
            setState(() {
              isLikeAnimating = true;
            });
          },
          child: Stack(alignment: Alignment.center, children: [
            SizedBox(
              width: double.infinity,
              child: Image.network(
                widget.snap['postUrl'],
              ),
            ),
            AnimatedOpacity(
              opacity: isLikeAnimating ? 1 : 0,
              duration: const Duration(milliseconds: 300),
              child: LikeAnimation(
                isAnimating: isLikeAnimating,
                duration: const Duration(microseconds: 600),
                onEnd: () {
                  setState(() {
                    isLikeAnimating = false;
                  });
                },
                child: const Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 150,
                ),
              ),
            )
          ]),
        ),

        // Feed Image comment section
        Row(
          children: [
            LikeAnimation(
              isAnimating:
                  widget.snap['likes'].contains(_auth.currentUser!.uid),
              smallLike: true,
              child: IconButton(
                onPressed: () async {
                  await FirestoreMethods().likePost(
                    widget.snap['postId'],
                    _auth.currentUser!.uid,
                    widget.snap['likes'],
                  );
                },
                icon: widget.snap['likes'].contains(_auth.currentUser!.uid)
                    ? const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    : const Icon(
                        Icons.favorite_outline,
                      ),
              ),
            ),
            IconButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Comments(
                    snap: widget.snap,
                  ),
                ),
              ),
              icon: const Icon(
                Icons.mode_comment_outlined,
              ),
            ),
            const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.speed_outlined,
              ),
            ),
            const Expanded(
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
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                child: Text(
                  '${widget.snap['likes'].length} likes',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(
                  top: 8,
                  bottom: 8,
                ),
                child: InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProfilePage(
                            uid: widget.snap['uid'],
                          ))),
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(color: ColorManager.black),
                      children: [
                        TextSpan(
                          text: widget.snap['username'],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: ' ${widget.snap['description']}',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Comments(
                          snap: widget.snap['postId'].toString(),
                        ))),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Comments(
                          snap: widget.snap,
                        ),
                      ),
                    ),
                    child: Text(
                      'View all $commentLength comments',
                      style: const TextStyle(
                        fontSize: 14,
                        // color: ColorManager.grey,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  DateFormat.MMMd().format(
                    widget.snap['datePublished'].toDate(),
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
