import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:god_life_conversations/providers/user_provider.dart';

import 'package:god_life_conversations/models/user.dart' as model;
import 'package:god_life_conversations/providers/user_provider.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // to manually call a specific part of data from the firestore

  // String username = "";

  // @override
  // void initState() {
  //   super.initState();
  //   getUsername();
  // }

  // void getUsername() async {
  //   DocumentSnapshot snap = await FirebaseFirestore.instance
  //       .collection('users')
  //       .doc(FirebaseAuth.instance.currentUser!.uid)
  //       .get();

  //   setState(() {
  //     username = (snap.data() as Map<String, dynamic>)['username'];
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    model.User user = Provider.of<UserProvider>(context).getUser;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Welcome to your profile ${user.username}',
              style: const TextStyle(color: Colors.black, fontSize: 15),
            ),
          ),
          MaterialButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            color: Colors.green.shade400,
            child: const Text('Sign out'),
          )
        ],
      ),
    );
  }
}
