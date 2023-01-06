import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:god_life_conversations/responsive/mobile_folder/components/glass_Box.dart';
import 'package:god_life_conversations/responsive/mobile_folder/components/glass_box_2.dart';
import 'package:god_life_conversations/utilities.dart/colors.dart';
import 'package:god_life_conversations/utilities.dart/utils.dart';
import 'package:provider/provider.dart';
import '../../../providers/user_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:god_life_conversations/models/user.dart' as model;

import '../../widgets/text_field_input.dart';

class GlcFeed extends StatefulWidget {
  const GlcFeed({super.key});

  @override
  State<GlcFeed> createState() => _GlcFeedState();
}

class _GlcFeedState extends State<GlcFeed> {
  final TextEditingController _descriptionController = TextEditingController();
  @override
  void dispose() {
    _descriptionController.dispose();
    super.dispose();
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
      body: Container(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showModalBottomSheet<void>(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (BuildContext context) {
              return makeDismissible(
                child: DraggableScrollableSheet(
                  initialChildSize: 0.7,
                  minChildSize: 0.5,
                  maxChildSize: 0.9,
                  builder: (_, controller) => Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: ListView(
                        controller: controller,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: mainColor,
                            foregroundImage: NetworkImage(
                              user.photoUrl,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Center(
                            child: SizedBox(
                              width: 200,
                              height: 200,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        // MemoryImage(_postUpload!),

                                        _postUpload == null
                                            ? NetworkImage(
                                                'https://images.unsplash.com/photo-1617791160536-598cf32026fb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHRoaW5raW5nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
                                              ) as ImageProvider
                                            : FileImage(_postUpload!)
                                                as ImageProvider,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: TextFieldInputt(
                              textEditingController: _descriptionController,
                              hintText: 'Share as you are led...',
                              textInputType: TextInputType.text,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Post',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
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
        label: const Text(
          'Post',
          style: TextStyle(color: Colors.white),
        ),
        icon: const Icon(
          Icons.post_add_rounded,
          color: Colors.white,
        ),
        backgroundColor: mainColor,
      ),
    );
  }
}
