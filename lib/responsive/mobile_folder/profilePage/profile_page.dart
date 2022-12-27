import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:god_life_conversations/providers/user_provider.dart';
import 'package:god_life_conversations/responsive/mobile_folder/components/glass_box_2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blur/blur.dart';
import 'package:god_life_conversations/models/user.dart' as model;
import 'package:god_life_conversations/providers/user_provider.dart';
import 'package:god_life_conversations/utilities.dart/colors.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    model.User user = Provider.of<UserProvider>(context).getUser;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(children: [
              SizedBox(
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: double.infinity,
                      child: Image.network(user.photoUrl))
                  .blurred(
                      colorOpacity: 0.5,
                      borderRadius: const BorderRadius.horizontal(
                          right: Radius.circular(20)),
                      blur: 8),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 120,
                                backgroundColor: mainColor,
                                foregroundImage: NetworkImage(
                                  scale: 1,
                                  user.photoUrl,
                                ),
                              ),
                              GlassBox2(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: mainColor),
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: const BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  width: 1,
                                                  color: Colors.white)),
                                        ),
                                        child: const IconButton(
                                            iconSize: 30,
                                            onPressed: null,
                                            icon: Icon(
                                              Icons.favorite,
                                              color: Colors.white,
                                            )),
                                      ),
                                      Container(
                                        decoration: const BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  width: 1,
                                                  color: Colors.white)),
                                        ),
                                        child: const IconButton(
                                            iconSize: 30,
                                            onPressed: null,
                                            icon: Icon(Icons.add_a_photo,
                                                color: Colors.white)),
                                      ),
                                      const IconButton(
                                          iconSize: 30,
                                          onPressed: null,
                                          icon: Icon(Icons.share,
                                              color: Colors.white)),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text(user.username,
                              style: (GoogleFonts.pacifico(
                                  fontSize: 45,
                                  color: Colors.white,
                                  shadows: [
                                    const Shadow(
                                      blurRadius: 10.0, // shadow blur
                                      color: mainColor, // shadow color
                                      offset: Offset(2.0,
                                          2.0), // how much shadow will be shown
                                    ),
                                  ],
                                  fontWeight: FontWeight.bold))),
                          // style: const TextStyle(
                          //     color: Colors.black,
                          //     fontSize: 45,
                          //     fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                  height: 40,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: mainColor),
                                  child: const Center(
                                    child: Text(
                                      'Number1',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Container(
                                  height: 40,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: mainColor),
                                  child: const Center(
                                    child: Text(
                                      'Number1',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )),
                            ),
                          ],
                        )
                        // MaterialButton(
                        //   onPressed: () {
                        //     FirebaseAuth.instance.signOut();
                        //   },
                        //   color: mainColor,
                        //   child: const Text(
                        //     'Sign out',
                        //     style: TextStyle(color: Colors.white),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
