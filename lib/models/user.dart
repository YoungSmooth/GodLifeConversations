class User {
  String fullName;
  // String email;
  // String uid;
  String photoUrl;
  String username;
  String bio;
  String department;
  List followers;
  List following;

  User({
    required this.fullName,
    // required this.email,
    // required this.uid,
    required this.photoUrl,
    required this.username,
    required this.bio,
    required this.department,
    required this.followers,
    required this.following,
  });

  Map<String, dynamic> toJson() => {
        'fullName': fullName,
        // 'email': email,
        // 'uid': uid,
        'photoUrl': photoUrl,
        'username': username,
        'bio': bio,
        'department': department,
        'followers': followers,
        'following': following,
        // 'testimonie': testimonies,
      };

  static User fromSnap(snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return User(
      fullName: snapshot['fullName'],
      // email: snapshot['email'],
      // uid: snapshot['uid'],
      photoUrl: snapshot['photoUrl'],
      username: snapshot['username'],
      bio: snapshot['bio'],
      department: snapshot['department'],
      followers: snapshot['followers'],
      following: snapshot['following'],
    );
  }
}
