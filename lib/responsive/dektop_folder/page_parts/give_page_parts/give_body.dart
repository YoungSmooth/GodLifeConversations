import 'package:flutter/material.dart';

class GiveBody extends StatelessWidget {
  const GiveBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: SizedBox(
              child: Image.asset(
                'lib/assets/give.jpg',
                // fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
