class User {
  final String email;
  final String uid;
  final String photoUrl;
  final String username;
  final String bio;
  final List followers;
  // final List testimonies;
  // final String department;
  final List following;

  const User({
    this.email = "",
    this.uid = "",
    this.photoUrl = "",
    this.username = "",
    this.bio = "",
    // required this.department,
    // required this.testimonies,
    this.followers = const [],
    this.following = const [],
  });

  Map<String, dynamic> toJson() => {
        'email': email,
        'uid': uid,
        'photoUrl': photoUrl,
        'username': username,
        'bio': bio,
        'followers': followers,
        'following': following,
        // 'department': department,
        // 'testimonie': testimonies,
      };

  static User fromSnap(snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return User(
        email: snapshot['email'],
        uid: snapshot['uid'],
        photoUrl: snapshot['photoUrl'],
        username: snapshot['username'],
        bio: snapshot['bio'],
        followers: snapshot['followers'],
        following: snapshot['following']);
  }
}
