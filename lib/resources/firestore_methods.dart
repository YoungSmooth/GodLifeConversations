import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:god_life_conversations/models/feed_post.dart';
import 'package:uuid/uuid.dart';
import 'dart:io';
import 'storage_methods.dart';

class FirestoreMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //upload content
  Future<String> uploadFeedPost(
    String desciption,
    File file,
    String uid,
    String username,
    String profileImage,
  ) async {
    String res = "Some error occurred";
    try {
      String photoUrl =
          await StorageMethods().uploadImageToStorage('FeedPosts', file, true);

      String postId = const Uuid().v1();

      FeedPost feedPost = FeedPost(
        description: desciption,
        uid: uid,
        username: username,
        postId: postId,
        datePublished: DateTime.now(),
        postUrl: photoUrl,
        profileimage: profileImage,
        likes: [],
      );
      _firestore.collection('feedposts').doc(postId).set(feedPost.toJson());
      res = "success";
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}
