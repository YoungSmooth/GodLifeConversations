import 'package:flutter/material.dart';

const colorizeColors = [
  Colors.black,
  Colors.grey,
  Colors.white,
  Colors.purple,
];

final colorizeTextStyle = TextStyle(
  fontWeight: FontWeight.w900,
  fontSize: 50,
  shadows: <Shadow>[
    const Shadow(
      offset: Offset(4.0, 4.0),
      blurRadius: 3.0,
      color: Color.fromARGB(99, 64, 64, 64),
    ),
    Shadow(
      offset: const Offset(1.0, 1.0),
      blurRadius: 8.0,
      color: Colors.grey.shade100,
    ),
  ],
);

const colorizeTextStyleMobile = TextStyle(
  fontWeight: FontWeight.w900,
  fontSize: 15,
  shadows: <Shadow>[
    Shadow(
      offset: Offset(2.0, 2.0),
      blurRadius: 2.0,
      color: Colors.white10,
    ),
    Shadow(
      offset: Offset(1.0, 1.0),
      blurRadius: 1.0,
      color: Colors.grey,
    ),
  ],
);

const connectMessage = Text(
  textAlign: TextAlign.center,
  'We would love to connect with you. We have been praying for you and would love to grow with you. You can visit our location, connect with us via our social media platforms or contact us directly with the information below.',
);
