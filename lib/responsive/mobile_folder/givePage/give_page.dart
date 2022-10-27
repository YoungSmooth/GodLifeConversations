import 'package:flutter/material.dart';

class GivePage extends StatelessWidget {
  const GivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Image.asset(
              'lib/assets/give.jpg',
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ],
    );
  }
}
