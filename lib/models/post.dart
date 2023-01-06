class Post {
  final String description;
  final String uid;
  final String username;
  final String postId;
  final String datePublished;
  final List postUrl;
  final List profileimage;
  final likes;

  const Post({
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

  static Post fromSnap(snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Post(
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
