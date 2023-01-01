import 'package:flutter/material.dart';
import 'package:god_life_conversations/resources/auth_methods.dart';
import 'package:god_life_conversations/responsive/registration/signup_screen.dart';
import 'package:god_life_conversations/utilities/utils.dart';

import '../../resources/string_manager.dart';
import '../../utilities/colors.dart';
import '../dektop_folder/pages/desktop_home_page.dart';
import '../mobile_folder/mobile_scaffold.dart';
import '../responsive_layout.dart';
import '../tablet_folder/tablet_scaffold.dart';
import '../widgets/text_field_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future loginUser() async {
    setState(() {
      _isLoading = true;
    });
    try {
      String res = await AuthMethods().loginUser(email: _emailController.text, password: _passwordController.text);
      if (res != "StringManager.success") throw res;
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) =>
                const ResponsiveLayout(mobileScaffold: MobileScaffold(), tabletScaffold: TabletScaffold(), desktopScaffld: DesktopScaffold()),
          ),
        );
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      showSnackBar(e.toString(), context);
    }
  }

  void navigateToSignUp() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
              const SizedBox(height: 64),
              TextFieldInput(textEditingController: _emailController, hintText: StringManager.enterEmail, textInputType: TextInputType.emailAddress),
              const SizedBox(height: 24),
              PasswordInputField(
                  textEditingController: _passwordController, hintText: StringManager.enterPassword, textInputType: TextInputType.text, isPass: true),
              const SizedBox(height: 24),
              InkWell(
                onTap: loginUser,
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    color: mainColor,
                  ),
                  child: _isLoading
                      ? const Center(child: CircularProgressIndicator(color: primaryColor))
                      : const Text(StringManager.logIn, style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 14),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: navigateToSignUp,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: const Text(StringManager.signUp, style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
