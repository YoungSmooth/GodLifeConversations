// ignore_for_file: unused_local_variable, unnecessary_null_comparison, depend_on_referenced_packages
import 'package:god_life_conversations/resources/storage_methods.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:god_life_conversations/models/user.dart' as model;
import 'package:god_life_conversations/resources/string_manager.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<model.User> getUserDetails() async {
    User currentUser = _auth.currentUser!;
    DocumentSnapshot snap =
        await _firestore.collection('users').doc(currentUser.uid).get();
    return model.User.fromSnap(snap);
  }

  // short sign up user
  Future<String> quickSignUpUser({
    required String email,
    required String password,
  }) async {
    String res = 'Some error occurred';
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        // register user
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        res = 'success';
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  // sign up user
  Future<String> signUpUser({
    required String email,
    required String password,
  }) async {
    String res = 'Some error occurred';
    try {
      if (email.isNotEmpty || password.isNotEmpty
          // ||
          // username.isNotEmpty ||
          // bio.isNotEmpty ||
          // file != null
          ) {
        // register user
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        // String photoUrl = await StorageMethods()
        //     .uploadImageToStorage('profilePics', file, false);

        String photoUrl =
            'https://media.istockphoto.com/id/1207314090/photo/child-holding-yellow-balloon-in-the-hands.jpg?s=612x612&w=0&k=20&c=XIka5vPP8AOvNslEHHGV5rxRrHXMg2HVCaqzw8Fs0iU=';

        model.User user = model.User(
          fullName: 'fullName',
          email: email,
          uid: cred.user!.uid,
          photoUrl: photoUrl,
          username: 'Username',
          bio: 'Bio',
          department: 'department',
          followers: [],
          following: [],
        );

        await _firestore.collection('users').doc(cred.user!.uid).set(
              user.toJson(),
            );

        res = 'success';
      } else {
        res = "Please select and Image and enter all the fields";
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  // logging in user
  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String res = 'Some error occured';
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = 'Success';
      } else {
        res = 'Please enter all credentials';
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
