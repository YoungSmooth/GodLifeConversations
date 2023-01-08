import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //upload content
  // Future<String> uploadContent(
  //   String desciption,
  //   File file,
  //   String uid,
  // ) async {
  //   String res = "Some error occurred";
  //   try {
  //     String photoUrl =
  //        await StorageMethods().uploadImageToStorage('Posts', file, true);
  //   } catch (err) {}
  // }
}
