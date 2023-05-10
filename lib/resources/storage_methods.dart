// ignore_for_file: depend_on_referenced_packages
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uuid/uuid.dart';

class StorageMethods {
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // adding image to firebase storage
  Future<String> uploadImageToStorage(
      String childName, File file, bool isPost) async {
    Reference ref =
        _storage.ref().child(childName).child(_auth.currentUser!.uid);

    if (isPost) {
      String id = const Uuid().v1();
      ref = ref.child(id);
    }

    UploadTask uploadTask = ref.putFile(file);

    TaskSnapshot snapshot = await uploadTask;
    String downloadUrl = await snapshot.ref.getDownloadURL();
    return downloadUrl;
  }

  // Future<String> uploadDefaultImageToStorage(
  //     String profilePic, String link) async {
  //   Reference ref =
  //       _storage.ref().child(profilePic).child(_auth.currentUser!.uid);
  //   UploadTask uploadTask = ref.putString(link,
  //       format: PutStringFormat.dataUrl,
  //       metadata: SettableMetadata(
  //         contentType: "image/jpeg",
  //       ));
  //   TaskSnapshot snapshot = await uploadTask;
  //   String downloadUrl = snapshot.ref.getDownloadURL().toString();
  //   return downloadUrl;
  //   // TaskSnapshot snapshot = await uploadTask;
  //   // String downloadUrl = await snapshot.ref.getDownloadURL();
  //   // return downloadUrl;
  // }
}
