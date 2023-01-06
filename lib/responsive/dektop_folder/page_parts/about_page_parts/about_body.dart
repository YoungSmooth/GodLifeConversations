import 'package:flutter/material.dart';

class AboutBody extends StatelessWidget {
  const AboutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 100, right: 100, top: 50, bottom: 50),
              child: Column(
                children: [
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text(
                          'About The Church',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                          textAlign: TextAlign.center,
                          'We would love to connect with you. We have been praying for you and would love to grow with you. You can visit our location, connect with us via our social media platforms or contact us directly with the information below. We would love to connect with you.'),
                    ],
                  ),
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(bottom: 20, top: 20),
                        child: Text(
                          'About Pastor Joseph Victor',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                          textAlign: TextAlign.center,
                          'We would love to connect with you. We have been praying for you and would love to grow with you. You can visit our location, connect with us via our social media platforms or contact us directly with the information below. We would love to connect with you.'),
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
