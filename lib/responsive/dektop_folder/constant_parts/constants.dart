import 'package:flutter/material.dart';

const colorizeColors = [
  Colors.black,
  Color.fromARGB(255, 10, 84, 145),
  Colors.white,
  Colors.teal,
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
);
