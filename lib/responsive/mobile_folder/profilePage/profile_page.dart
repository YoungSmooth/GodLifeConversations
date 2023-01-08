// ignore_for_file: depend_on_referenced_packages

import 'package:god_life_conversations/providers/user_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blur/blur.dart';
import 'package:god_life_conversations/models/user.dart' as model;
import 'package:god_life_conversations/utilities.dart/colors.dart';
import 'package:provider/provider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

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
            Stack(
              children: [
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
                      padding: const EdgeInsets.only(top: 50),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                DottedBorder(
                                  borderType: BorderType.Circle,
                                  color: Colors.white,
                                  strokeWidth: 5,
                                  radius: const Radius.circular(10),
                                  dashPattern: const [5, 5],
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Neumorphic(
                                      style: const NeumorphicStyle(
                                          shape: NeumorphicShape.concave,
                                          boxShape: NeumorphicBoxShape.circle(),
                                          depth: 8,
                                          surfaceIntensity: 0.8,
                                          intensity: 0.99,
                                          lightSource: LightSource.topRight,
                                          color: Colors.black),
                                      child: CircleAvatar(
                                        radius: 110,
                                        backgroundColor: mainColor,
                                        foregroundImage: NetworkImage(
                                          scale: 1,
                                          user.photoUrl,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
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
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Text(user.username,
                                style: (GoogleFonts.pacifico(
                                    fontSize: 40,
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
                          ),
                          const SizedBox(height: 5),
                          Container(
                            padding: const EdgeInsets.fromLTRB(30, 0, 30, 5),
                            height: 100,
                            width: double.infinity,
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                    maxLines: 5,
                                    'How long will this contain what is written here. That is all I am trying to check. Can you confirm them. ${user.bio}')),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400, width: 0.8),
                  // color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          '20',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: mainColor),
                        ),
                        Text(
                          'Posts',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          '50',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: mainColor),
                        ),
                        Text(
                          'Testimonies',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400, width: 0.8),
                  // color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      child: IconButton(
                        iconSize: 30,
                        onPressed: null,
                        icon: Icon(
                          Icons.departure_board_rounded,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1, color: Colors.grey.shade400)),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                            child: Text(
                              'Department                                   ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.blue),
                            ),
                          ),
                        ),
                        const Text('Ushering'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
