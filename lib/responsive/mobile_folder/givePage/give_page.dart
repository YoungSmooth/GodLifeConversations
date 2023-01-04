import 'package:flutter/material.dart';

class GivePage extends StatelessWidget {
  const GivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SafeArea(
          child: Center(
            child: SizedBox(
              height: 400,
              width: 300,
              child: Image.asset('lib/assets/give.jpg', fit: BoxFit.contain),
            ),
          ),
        ),
      ],
    );
  }
}
