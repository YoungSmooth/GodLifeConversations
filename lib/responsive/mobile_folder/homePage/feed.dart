// ignore_for_file: depend_on_referenced_packages, use_build_context_synchronously

import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import '../../../models/user.dart' as model;
import '../../../providers/user_provider.dart';
import '../../../resources/color_manager.dart';
import '../../../resources/firestore_methods.dart';
import '../../../resources/string_manager.dart';
import '../../../utilities.dart/colors.dart';
import '../../../utilities/utils.dart';
import '../../feed_card.dart';
import '../../widgets/text_field_input.dart';

class GlcFeed extends StatefulWidget {
  const GlcFeed({super.key});

  @override
  State<GlcFeed> createState() => _GlcFeedState();
}

class _GlcFeedState extends State<GlcFeed> {
  final TextEditingController _descriptionController = TextEditingController();
  bool isLoading = false;

  @override
  void dispose() {
    _descriptionController.dispose();
    super.dispose();
  }

  void feedPost(
    String uid,
    String username,
    String profileImage,
  ) async {
    setState(() {
      isLoading = true;
    });
    try {
      String res = await FirestoreMethods().uploadFeedPost(
          _descriptionController.text,
          _postUpload!,
          uid,
          username,
          profileImage);
      if (res == "success") {
        setState(() {
          isLoading = false;
        });
        showSnackBar('Posted!', context);
      } else {
        showSnackBar(res, context);
      }
    } catch (e) {
      showSnackBar(e.toString(), context);
    }
  }

  File? _postUpload;
  Future _postImage(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: const Center(
                child: Text(
              'Pick an image',
              style: TextStyle(fontWeight: FontWeight.bold, color: mainColor),
            )),
            children: [
              SimpleDialogOption(
                padding: const EdgeInsets.all(20),
                child: const Center(child: Text('Take a picture!')),
                onPressed: () async {
                  Navigator.of(context).pop();
                  _postUpload = await pickImagee(
                    ImageSource.camera,
                  );
                },
              ),
              SimpleDialogOption(
                padding: const EdgeInsets.all(20),
                child: const Center(child: Text('Choose from Gallery')),
                onPressed: () async {
                  Navigator.of(context).pop();
                  _postUpload = await pickImagee(
                    ImageSource.gallery,
                  );
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final model.User user = Provider.of<UserProvider>(context).getUser;

    Widget makeDismissible({required Widget child}) => GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => Navigator.of(context).pop(),
          child: GestureDetector(
            onTap: () {},
            child: child,
          ),
        );

    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('feedposts')
            .orderBy('datePublished', descending: true)
            .snapshots(),
        builder: (context,
            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final querySnapshot = snapshot.data;
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) => FeedCard(
              snap: querySnapshot!.docs[index].data(),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showModalBottomSheet<void>(
            isScrollControlled: true,
            backgroundColor: ColorManager.transparent,
            context: context,
            builder: (BuildContext context) {
              return makeDismissible(
                child: DraggableScrollableSheet(
                  initialChildSize: 0.7,
                  minChildSize: 0.5,
                  maxChildSize: 0.9,
                  builder: (_, controller) => Container(
                    decoration: const BoxDecoration(
                      color: ColorManager.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    padding: EdgeInsets.only(
                      top: 16,
                      left: 16,
                      right: 16,
                      bottom: MediaQuery.of(context).viewInsets.bottom + 10,
                    ),
                    child: Center(
                      child: ListView(
                        controller: controller,
                        children: <Widget>[
                          const SizedBox(height: 10),
                          Center(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: 200,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: _postUpload == null
                                        // ignore: unnecessary_cast
                                        ? const NetworkImage(
                                            'http://images.unsplash.com/photo-1617791160536-598cf32026fb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHRoaW5raW5nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
                                          ) as ImageProvider
                                        // ignore: unnecessary_cast
                                        : FileImage(_postUpload!)
                                            as ImageProvider,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: TextFieldInputt(
                              textEditingController: _descriptionController,
                              hintText: 'Share as you are led...',
                              textInputType: TextInputType.text,
                            ),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ColorManager.blue,
                            ),
                            onPressed: () {
                              feedPost(user.uid, user.username, user.photoUrl);
                              setState(() {
                                _descriptionController.text = '';
                                _postUpload == null;
                              });
                              Navigator.of(context).pop();
                            },
                            child: const Text(StringManager.post,
                                style: TextStyle(color: ColorManager.white)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
          _postImage(context);
        },
        label: const Text(StringManager.post,
            style: TextStyle(color: ColorManager.white)),
        icon: const Icon(Icons.post_add_rounded, color: ColorManager.white),
        backgroundColor: mainColor,
      ),
    );
  }
}
