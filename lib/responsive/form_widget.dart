// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:god_life_conversations/constants.dart';
import 'package:god_life_conversations/data/roles_selector.dart';
import 'package:god_life_conversations/models/roles_model.dart';
import 'package:god_life_conversations/utilities.dart/utils.dart';
import 'package:image_picker/image_picker.dart';

class RegistrationFormWidget extends StatefulWidget {
  const RegistrationFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<RegistrationFormWidget> createState() => _RegistrationFormWidgetState();
}

class _RegistrationFormWidgetState extends State<RegistrationFormWidget> {
  final _formKey = GlobalKey<FormState>();
  File? _image;
  var _fullName = '';
  var _userName = '';
  var _bio = '';
  var _selectedDepartment = departmentRoles[Roles.pastor]!;

  void _updadeProfile() {
    if (_formKey.currentState!.validate() && _image != null) {
      _formKey.currentState!.save();
    }
  }

  void selectImage() async {
    File im = await pickImage(ImageSource.gallery);

    setState(() {
      _image = im;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                Stack(
                  children: [
                    _image != null
                        ? CircleAvatar(
                            radius: 60,
                            backgroundImage: FileImage(_image!),
                          )
                        : const CircleAvatar(
                            radius: 64,
                            backgroundImage: NetworkImage(
                              "https://media.istockphoto.com/id/1316420668/vector/user-icon-human-person-symbol-social-profile-icon-avatar-login-sign-web-user-symbol.jpg?s=612x612&w=0&k=20&c=AhqW2ssX8EeI2IYFm6-ASQ7rfeBWfrFFV4E87SaFhJE=",
                            ),
                          ),
                    const Positioned(
                      bottom: -10,
                      left: 80,
                      child: IconButton(
                        onPressed: null
                        // selectImage
                        ,
                        icon: Icon(
                          Icons.add_a_photo,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  'Image upload compulsory...',
                  style: TextStyle(
                      fontStyle: FontStyle.italic, color: Colors.brown),
                ),
                const SizedBox(
                  height: 12,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: TextFormField(
                    decoration: kformDecoration.copyWith(
                      label: const Text('Full Name'),
                      icon: const Icon(Icons.edit_location_alt_rounded),
                    ),
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          value.trim().length <= 5 ||
                          value.trim().length > 40) {
                        return 'Must be between 5 and 40 characters';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _fullName = value!;
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: TextFormField(
                    decoration: kformDecoration.copyWith(
                        label: const Text('Username'),
                        icon: const Icon(Icons.photo_camera_front_outlined)),
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          value.trim().length <= 5 ||
                          value.trim().length > 20) {
                        return 'Must be between 5 and 20 characters';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _userName = value!;
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: TextFormField(
                    decoration: kformDecoration.copyWith(
                        label: const Text('Bio'),
                        icon: const Icon(Icons.person_pin)),
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          value.trim().length <= 15 ||
                          value.trim().length > 100) {
                        return 'Must be between 15 and 100 characters';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _bio = value!;
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: DropdownButtonFormField(
                    value: _selectedDepartment,
                    decoration: kformDecoration.copyWith(
                        label: const Text('Select Department'),
                        icon: const Icon(Icons.diversity_1_sharp)),
                    items: [
                      for (final role in departmentRoles.entries)
                        DropdownMenuItem(
                          value: role.value,
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: role.value.color,
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(role.value.role),
                            ],
                          ),
                        ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _selectedDepartment = value!;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: ElevatedButton(
                    onPressed: _updadeProfile,
                    child: const Text('Update Profile'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
