import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:god_life_conversations/resources/firestore_methods.dart';
import 'package:god_life_conversations/responsive/comment_card.dart';
import 'package:provider/provider.dart';

import '../../../models/user.dart';
import '../../../providers/user_provider.dart';
import '../../../resources/color_manager.dart';

class Comments extends StatefulWidget {
  final snap;
  const Comments({super.key, required this.snap});

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  final TextEditingController _commentController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _commentController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final User user = Provider.of<UserProvider>(context).getUser;
    // final snap = snapshot.data!.docs[index].data();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Comment image
            Stack(
              children: [
                Image.network(widget.snap['postUrl']),
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(50)),
                        child: IconButton(
                          onPressed: () => Navigator.of(context).pop(),
                          icon: const Icon(
                            Icons.arrow_back_ios_new_outlined,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // comment description,
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 18,
                horizontal: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      widget.snap['profilePic'].toString(),
                    ),
                    radius: 18,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              style: const TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                  text: widget.snap['username'],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: ' ${widget.snap['description']}',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // actual comments ,
            Container(
              height: 400,
              child: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('feedposts')
                    .doc(widget.snap['postId'])
                    .collection('comments')
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  return ListView.builder(
                    itemCount: (snapshot.data! as dynamic).docs.length,
                    itemBuilder: (context, index) => CommentCard(
                      snap: (snapshot.data! as dynamic).docs[index].data(),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
          child: Container(
        height: kToolbarHeight,
        margin:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        padding: const EdgeInsets.only(left: 16, right: 8),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(user.photoUrl),
              radius: 18,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 8),
                child: TextField(
                  controller: _commentController,
                  decoration: InputDecoration(
                      hintText: 'Comment as ${user.username}',
                      border: InputBorder.none),
                ),
              ),
            ),
            InkWell(
              onTap: () async {
                await FirestoreMethods().postComment(
                  widget.snap['postId'],
                  _commentController.text,
                  user.uid,
                  user.username,
                  user.photoUrl,
                );
                setState(() {
                  _commentController.text = '';
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: const Text(
                  'Post',
                  style: TextStyle(color: Colors.lightBlue),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
