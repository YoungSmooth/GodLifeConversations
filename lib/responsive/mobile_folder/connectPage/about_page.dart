import 'package:flutter/material.dart';

import '../../../resources/string_manager.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Image.network(
                      'https://images.unsplash.com/photo-1666296445813-68706848b125?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzOHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 5, top: 10),
                    child: Text(StringManager.aboutChurch, style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  const Text(textAlign: TextAlign.center, StringManager.aboutChurchBody),
                ],
              ),
              Column(
                children: [
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Image.network(
                        'https://plus.unsplash.com/premium_photo-1663126429384-e24a6787155f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3M3x8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',
                        fit: BoxFit.fitWidth),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 5, top: 20),
                    child: Text(
                      StringManager.aboutPstJoseph,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Text(textAlign: TextAlign.center, StringManager.aboutPstJosephBody),
                  const SizedBox(height: 30),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
