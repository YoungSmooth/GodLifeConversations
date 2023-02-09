// ignore_for_file: depend_on_referenced_packages, use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:god_life_conversations/resources/auth_methods.dart';
import 'package:god_life_conversations/responsive/mobile_folder/profilePage/profile_testimonies.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blur/blur.dart';
import 'package:god_life_conversations/utilities.dart/colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../utilities.dart/utils.dart';
import '../../registration/login_screen.dart';

class ProfilePage extends StatefulWidget {
  final String uid;
  const ProfilePage({super.key, required this.uid});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int profilePostLength = 0;
  var userData = {};
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    setState(() {
      isLoading = true;
    });
    try {
      var userSnap = await FirebaseFirestore.instance
          .collection('users')
          .doc(widget.uid)
          .get();
      userData = userSnap.data()!;
      // post length
      var postSnap = await FirebaseFirestore.instance
          .collection('feedposts')
          // .where('uid', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
          .where('uid', isEqualTo: userData['uid'])
          .get();
      profilePostLength = postSnap.docs.length;

      setState(() {});
    } catch (e) {
      showSnackBar(
        e.toString(),
        context,
      );
    }
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : Scaffold(
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.6,
                        width: double.infinity,
                        child: Image.network(
                          userData['photoUrl'],
                        ),
                      ).blurred(
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
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                                boxShape:
                                                    NeumorphicBoxShape.circle(),
                                                depth: 8,
                                                surfaceIntensity: 0.8,
                                                intensity: 0.99,
                                                lightSource:
                                                    LightSource.topRight,
                                                color: Colors.black),
                                            child: CircleAvatar(
                                              radius: 110,
                                              backgroundColor: mainColor,
                                              foregroundImage: NetworkImage(
                                                userData['photoUrl']!,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(color: mainColor),
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(20),
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
                                            InkWell(
                                              onTap: () async {
                                                await AuthMethods().signOut();
                                                Navigator.of(context)
                                                    .pushReplacement(
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                const LoginScreen()));
                                              },
                                              child: const IconButton(
                                                  iconSize: 30,
                                                  onPressed: null,
                                                  icon: Icon(
                                                      Icons.outbond_outlined,
                                                      color: Colors.white)),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: Text(
                                      // userData['username']
                                      userData['username'],
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
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 0, 30, 5),
                                  height: 100,
                                  width: double.infinity,
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        // maxLines: 5,
                                        userData['bio'],
                                      )),
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
                        border:
                            Border.all(color: Colors.grey.shade400, width: 0.8),
                        // color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                profilePostLength.toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: mainColor),
                              ),
                              const Text(
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
                          ),
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
                        border:
                            Border.all(color: Colors.grey.shade400, width: 0.8),
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
                                          width: 1,
                                          color: Colors.grey.shade400)),
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
                  SizedBox(
                    // color: Colors.blueGrey,
                    height: 700,
                    child: DefaultTabController(
                      length: 2,
                      child: Scaffold(
                        // extendBody: true,
                        body: Column(
                          children: [
                            const TabBar(
                              isScrollable: true,
                              labelColor: mainColor,
                              indicatorColor: Colors.grey,
                              tabs: [
                                Tab(
                                  text: 'Posts',
                                ),
                                Tab(
                                  text: 'Testimonies',
                                ),
                              ],
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  // ProfileFeedPost(),
                                  Scaffold(
                                    body: FutureBuilder(
                                        future: FirebaseFirestore.instance
                                            .collection('feedposts')
                                            .where('uid', isEqualTo: widget.uid)
                                            .get(),
                                        builder: (context, snapshot) {
                                          if (!snapshot.hasData) {
                                            return const Center(
                                                child:
                                                    CircularProgressIndicator());
                                          }
                                          return StaggeredGridView.countBuilder(
                                            crossAxisCount: 3,
                                            itemCount:
                                                (snapshot.data! as dynamic)
                                                    .docs
                                                    .length,
                                            itemBuilder: (context, index) =>
                                                Image.network((snapshot.data
                                                        as dynamic)
                                                    .docs[index]['postUrl']),
                                            staggeredTileBuilder: (index) =>
                                                const StaggeredTile.fit(1),
                                            mainAxisSpacing: 8,
                                            crossAxisSpacing: 8,
                                          );
                                        }),
                                  ),
                                  const ProfileTestimonies(),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
