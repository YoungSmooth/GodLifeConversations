import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../resources/auth_methods.dart';
import '../../resources/string_manager.dart';
import '../../responsive/registration/login_screen.dart';
import '../../utilities/colors.dart';
import '../../utilities/utils.dart';
import '../dektop_folder/pages/desktop_home_page.dart';
import '../mobile_folder/mobile_scaffold.dart';
import '../responsive_layout.dart';
import '../tablet_folder/tablet_scaffold.dart';
import '../widgets/text_field_input.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  File? _image;

  bool _isLoading = false;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _bioController.dispose();
    _usernameController.dispose();
  }

  void selectImage() async {
    _image = await pickImage(ImageSource.gallery);

    setState(() {});
  }

  Future signUpUser() async {
    setState(() {
      _isLoading = true;
    });

    String res = await AuthMethods().signUpUser(
      email: _emailController.text,
      password: _passwordController.text,
      username: _usernameController.text,
      bio: _bioController.text,
      profileImage: _image!,
    );

    if (res == StringManager.success) {
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
  }

  void navigateToLogin() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                SizedBox(
                  child: Image.asset('lib/assets/Logoblack.png', height: 64),
                ),
                const SizedBox(height: 40),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    _image != null
                        ? CircleAvatar(radius: 60, backgroundImage: FileImage(_image!))
                        : const CircleAvatar(
                            radius: 64,
                            backgroundImage: NetworkImage(
                                'https://media.istockphoto.com/id/1316420668/vector/user-icon-human-person-symbol-social-profile-icon-avatar-login-sign-web-user-symbol.jpg?s=612x612&w=0&k=20&c=AhqW2ssX8EeI2IYFm6-ASQ7rfeBWfrFFV4E87SaFhJE='),
                          ),
                    Positioned(
                      bottom: -10,
                      left: 80,
                      child: IconButton(onPressed: selectImage, icon: const Icon(Icons.add_a_photo)),
                    )
                  ],
                ),
                const SizedBox(height: 24),
                TextFieldInput(textEditingController: _usernameController, hintText: StringManager.enterUsername, textInputType: TextInputType.text),
                const SizedBox(height: 24),
                TextFieldInput(
                    textEditingController: _emailController, hintText: StringManager.enterEmail, textInputType: TextInputType.emailAddress),
                const SizedBox(height: 24),
                PasswordInputField(
                    textEditingController: _passwordController, hintText: StringManager.enterPassword, textInputType: TextInputType.text),
                const SizedBox(height: 24),
                TextFieldInput(textEditingController: _bioController, hintText: StringManager.enterBio, textInputType: TextInputType.text),
                const SizedBox(height: 24),
                InkWell(
                  onTap: signUpUser,
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration:
                        const ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))), color: mainColor),
                    child: _isLoading
                        ? const Center(child: CircularProgressIndicator(color: primaryColor))
                        : const Text(
                            'Sign up',
                            style: TextStyle(color: Colors.white),
                          ),
                  ),
                ),
                const SizedBox(height: 5),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(padding: const EdgeInsets.symmetric(vertical: 8), child: const Text("Already have an account?")),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: navigateToLogin,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: const Text("Login", style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
