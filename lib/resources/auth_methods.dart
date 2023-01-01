import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart' show DocumentSnapshot, FirebaseFirestore;
import 'package:firebase_auth/firebase_auth.dart' show FirebaseAuth, UserCredential;
import 'package:god_life_conversations/resources/string_manager.dart';

import '../models/user.dart';
import 'storage_methods.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<User> getUserDetails() async {
    final currentUser = _auth.currentUser!;
    DocumentSnapshot snap = await _firestore.collection('users').doc(currentUser.uid).get();
    return User.fromSnap(snap);
  }

  Future<String> signUpUser({
    required String email,
    required String password,
    required String username,
    required String bio,
    required File? profileImage,
  }) async {
    String res = StringManager.errorOccured;
    try {
      if (email.isNotEmpty || password.isNotEmpty || username.isNotEmpty || bio.isNotEmpty || profileImage != null) {
        UserCredential cred = await _auth.createUserWithEmailAndPassword(email: email, password: password);

        String photoUrl = await StorageMethods().uploadImageToStorage('profilePics', profileImage!, false);

        User user = User(
          email: email,
          uid: cred.user!.uid,
          photoUrl: photoUrl,
          username: username,
          bio: bio,
          followers: [],
          following: [],
          // testimonies: [],
          // department:department,
        );

        await _firestore.collection('users').doc(cred.user!.uid).set(
              user.toJson(),
            );
        res = StringManager.success;
      } else {
        res = StringManager.fillAllFields;
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String res = StringManager.errorOccured;
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(email: email, password: password);
        res = StringManager.success;
      } else {
        res = StringManager.fillAllFields;
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}
