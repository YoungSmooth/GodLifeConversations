class FeedPost {
  final String description;
  final String uid;
  final String username;
  final String postId;
  final DateTime datePublished;
  final String postUrl;
  final String profileimage;
  final List likes;

  const FeedPost({
    required this.description,
    required this.uid,
    required this.username,
    required this.postId,
    required this.datePublished,
    required this.postUrl,
    required this.profileimage,
    required this.likes,
  });

  Map<String, dynamic> toJson() => {
        'description': description,
        'uid': uid,
        'username': username,
        'postId': postId,
        'datePublished': datePublished,
        'postUrl': postUrl,
        'profileimage': profileimage,
        'likes': likes,
      };

  static FeedPost fromSnap(snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return FeedPost(
      description: snapshot['description'],
      uid: snapshot['uid'],
      username: snapshot['username'],
      postId: snapshot['postId'],
      datePublished: snapshot['datePublished'],
      postUrl: snapshot['postUrl'],
      profileimage: snapshot['profileimage'],
      likes: snapshot['likes'],
    );
  }
}
