import 'dart:io';

import 'package:flutter/material.dart';
import 'package:god_life_conversations/models/user.dart' as model;
import 'package:god_life_conversations/utilities/colors.dart';
import 'package:god_life_conversations/utilities/utils.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../../../providers/user_provider.dart';
import '../../../resources/string_manager.dart';
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
              child: Text(StringManager.pickImage, style: TextStyle(fontWeight: FontWeight.bold, color: mainColor)),
            ),
            children: [
              SimpleDialogOption(
                padding: const EdgeInsets.all(20),
                child: const Center(
                  child: Text(StringManager.takePicture),
                ),
                onPressed: () async {
                  Navigator.of(context).pop();
                  _postUpload = await pickImage(ImageSource.camera);
                },
              ),
              SimpleDialogOption(
                padding: const EdgeInsets.all(20),
                child: const Center(child: Text(StringManager.fromGallery)),
                onPressed: () async {
                  Navigator.of(context).pop();
                  _postUpload = await pickImage(ImageSource.gallery);
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
                        children: [
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
                                    image: _postUpload == null
                                        ? const NetworkImage(
                                            'https://images.unsplash.com/photo-1617791160536-598cf32026fb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHRoaW5raW5nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
                                          )
                                        : FileImage(_postUpload!) as ImageProvider,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: TextFieldInput(
                              textEditingController: _descriptionController,
                              hintText: StringManager.descriptionHint,
                              textInputType: TextInputType.text,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const ElevatedButton(
                            onPressed: null,
                            child: Text(StringManager.post, style: TextStyle(color: Colors.white)),
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
        label: const Text(StringManager.post, style: TextStyle(color: Colors.white)),
        icon: const Icon(Icons.post_add_rounded, color: Colors.white),
        backgroundColor: mainColor,
      ),
    );
  }
}
