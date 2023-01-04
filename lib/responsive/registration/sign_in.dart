import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../resources/font_size_manager.dart';
import '../../resources/string_manager.dart';

class SignIn extends StatefulWidget {
  final VoidCallback showRegisterpage;
  const SignIn({super.key, required this.showRegisterpage});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailController.text.trim(), password: _passwordController.text.trim());
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(StringManager.glc),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              controller: _emailController,
              decoration: InputDecoration(
                hintText: StringManager.enterEmail,
                enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.white), borderRadius: BorderRadius.circular(12)),
                fillColor: Colors.grey[200],
                filled: true,
                border: InputBorder.none,
                focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.black), borderRadius: BorderRadius.circular(12)),
                contentPadding: const EdgeInsets.all(8),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              obscureText: true,
              controller: _passwordController,
              decoration: InputDecoration(
                hintText: StringManager.enterPassword,
                fillColor: Colors.grey[200],
                filled: true,
                border: InputBorder.none,
                focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.black), borderRadius: BorderRadius.circular(12)),
                contentPadding: const EdgeInsets.all(8),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: GestureDetector(
              onTap: signIn,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(color: Colors.green.shade400, borderRadius: BorderRadius.circular(12)),
                child: const Center(
                  child: Text(StringManager.login, style: TextStyle(fontSize: FontSizeManager.s20, color: Colors.white)),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(StringManager.noAccount, style: TextStyle(fontWeight: FontWeight.bold)),
              GestureDetector(
                onTap: widget.showRegisterpage,
                child: Text(' ${StringManager.register}', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green.shade400)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
