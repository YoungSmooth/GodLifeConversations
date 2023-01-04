import 'package:flutter/material.dart';

import '../../../../resources/string_manager.dart';

class AboutBody extends StatelessWidget {
  const AboutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 100, right: 100, top: 50, bottom: 50),
              child: Column(
                children: [
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text(
                          StringManager.aboutChurch,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(textAlign: TextAlign.center, StringManager.aboutChurchBody),
                    ],
                  ),
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(bottom: 20, top: 20),
                        child: Text(
                          StringManager.aboutPstJoseph,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(textAlign: TextAlign.center, StringManager.aboutPstJosephBody),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
