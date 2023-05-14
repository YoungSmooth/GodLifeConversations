// ignore_for_file: public_member_api_docs, sort_constructors_first, use_build_context_synchronously
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:god_life_conversations/models/gender.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'package:god_life_conversations/constants.dart';
import 'package:god_life_conversations/data/roles_and_gender.dart';
import 'package:god_life_conversations/models/roles_model.dart';
import 'package:god_life_conversations/resources/auth_methods.dart';
import 'package:god_life_conversations/responsive/responsive_layout.dart';
import 'package:god_life_conversations/responsive/tablet_folder/tablet_scaffold.dart';
import 'package:god_life_conversations/utilities.dart/utils.dart';

import 'dektop_folder/pages/desktop_home_page.dart';
import 'mobile_folder/mobile_scaffold.dart';

class RegistrationFormWidget extends StatefulWidget {
  final String emailFromSignUp;
  final String uidFromSignUp;
  const RegistrationFormWidget({
    Key? key,
    required this.emailFromSignUp,
    required this.uidFromSignUp,
  }) : super(key: key);

  @override
  State<RegistrationFormWidget> createState() => _RegistrationFormWidgetState();
}

class _RegistrationFormWidgetState extends State<RegistrationFormWidget> {
  final _formKey = GlobalKey<FormState>();
  File? _image;
  String _fullName = '';
  String _userName = '';
  String _bio = '';
  String _selectedDepartment = departmentRoles[Roles.pastor]!.role;
  String _selectedGender = selectGender[Gender.male]!.genderType;

  bool _isLoading = false;
  @override
  void initState() {
    super.initState();
  }

  Future _updadeProfile() async {
    if (_formKey.currentState!.validate() && _image != null) {
      _formKey.currentState!.save();
      setState(() {
        _isLoading = true;
      });

      String res = await AuthMethods().updateUserProfileDetails(
        image: _image!,
        fullname: _fullName,
        bio: _bio,
        username: _userName,
        department: _selectedDepartment,
        gender: _selectedGender,
        uid: widget.uidFromSignUp,
        email: widget.emailFromSignUp,
      );
      if (res == 'success') {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const ResponsiveLayout(
              mobileScaffold: MobileScaffold(),
              tabletScaffold: TabletScaffold(),
              desktopScaffld: DesktopScaffold(),
            ),
          ),
        );
      } else {
        showSnackBar(res, context);
        setState(() {
          _isLoading = false;
        });
      }
      return res;
    }
  }

  void selectImage() async {
    File im = await pickImagee(ImageSource.gallery);

    setState(() {
      _image = im;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: _isLoading,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Stack(
                      children: [
                        _image != null
                            ? CircleAvatar(
                                radius: 64,
                                backgroundImage: FileImage(_image!),
                              )
                            : const CircleAvatar(
                                radius: 64,
                                backgroundImage: NetworkImage(
                                  "https://media.istockphoto.com/id/1316420668/vector/user-icon-human-person-symbol-social-profile-icon-avatar-login-sign-web-user-symbol.jpg?s=612x612&w=0&k=20&c=AhqW2ssX8EeI2IYFm6-ASQ7rfeBWfrFFV4E87SaFhJE=",
                                ),
                              ),
                        Positioned(
                          bottom: -10,
                          left: 80,
                          child: IconButton(
                            onPressed: selectImage,
                            icon: const Icon(
                              Icons.add_a_photo,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    if (_image == null)
                      const Text(
                        'Image upload compulsory...',
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.brown),
                      ),
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 8),
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 8),
                      child: TextFormField(
                        decoration: kformDecoration.copyWith(
                            label: const Text('Username'),
                            icon:
                                const Icon(Icons.photo_camera_front_outlined)),
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 8),
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 8),
                      child: DropdownButtonFormField(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 15,
                        value: _selectedDepartment,
                        decoration: kformDecoration.copyWith(
                            label: const Text('Select Department'),
                            icon: const Icon(Icons.diversity_1_sharp)),
                        items: [
                          for (final role in departmentRoles.entries)
                            DropdownMenuItem(
                              value: role.value.role,
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 8),
                      child: DropdownButtonFormField(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 15,
                        value: _selectedGender,
                        decoration: kformDecoration.copyWith(
                            label: const Text('Select Gender'),
                            icon: const Icon(Icons.male)),
                        items: [
                          for (final gender in selectGender.entries)
                            DropdownMenuItem(
                              value: gender.value.genderType,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: gender.value.color,
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Text(gender.value.genderType),
                                ],
                              ),
                            ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value!;
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
        ),
      ),
    );
  }
}
