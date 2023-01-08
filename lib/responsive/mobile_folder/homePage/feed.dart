// ignore_for_file: depend_on_referenced_packages

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../../../models/user.dart' as model;
import '../../../providers/user_provider.dart';
import '../../../resources/color_manager.dart';
import '../../../resources/string_manager.dart';
import '../../../utilities.dart/colors.dart';
import '../../../utilities/utils.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
                'https://images.unsplash.com/photo-1672696049977-5ef343a91556?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
            Image.network(
                'https://images.unsplash.com/photo-1672843164650-b39a24c549a0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60'),
            Image.network(
                'https://plus.unsplash.com/premium_photo-1664439520270-93166cec3c37?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzN3x8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60'),
            Image.network(
                'https://plus.unsplash.com/premium_photo-1663013632891-de1b709442a2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2Nnx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60'),
            Image.network(
                'https://images.unsplash.com/photo-1672842089797-70c750873c05?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3MXx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60'),
          ],
        ),
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
                                            // ignore: unnecessary_cast
                                            ? const NetworkImage(
                                                'https://images.unsplash.com/photo-1617791160536-598cf32026fb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHRoaW5raW5nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
                                              ) as ImageProvider
                                            // ignore: unnecessary_cast
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
                            child: Text(StringManager.post,
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
