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
    required this.email,
    required this.uid,
    required this.photoUrl,
    required this.username,
    required this.bio,
    // required this.department,
    // required this.testimonies,
    required this.followers,
    required this.following,
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