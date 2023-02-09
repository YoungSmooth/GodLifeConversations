import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProfileFeedPost extends StatefulWidget {
  const ProfileFeedPost({super.key});

  @override
  State<ProfileFeedPost> createState() => _ProfileFeedPostState();
}

class _ProfileFeedPostState extends State<ProfileFeedPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: FirebaseFirestore.instance.collection('feedposts').get(),

          // future: FirebaseFirestore.instance.collection('feedposts').where('uid', isEqualTo: widget.uid).get(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }
            return StaggeredGridView.countBuilder(
              crossAxisCount: 3,
              itemCount: (snapshot.data! as dynamic).docs.length,
              itemBuilder: (context, index) => Image.network(
                  (snapshot.data as dynamic).docs[index]['postUrl']),
              staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            );
          }),
    );
  }
}
