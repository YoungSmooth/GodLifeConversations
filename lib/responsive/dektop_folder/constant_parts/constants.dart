import 'package:flutter/material.dart';

import '../../../resources/font_size_manager.dart';
import '../../../resources/string_manager.dart';

const colorizeColors = [Colors.black, Colors.grey, Colors.white, Colors.purple];

final colorizeTextStyle = TextStyle(
  fontWeight: FontWeight.w900,
  fontSize: FontSizeManager.s50,
  shadows: [
    const Shadow(offset: Offset(4.0, 4.0), blurRadius: 3, color: Color.fromARGB(99, 64, 64, 64)),
    Shadow(offset: const Offset(1.0, 1.0), blurRadius: 8, color: Colors.grey.shade100),
  ],
);

const colorizeTextStyleMobile = TextStyle(
  fontWeight: FontWeight.w900,
  fontSize: FontSizeManager.s15,
  shadows: [
    Shadow(offset: Offset(2.0, 2.0), blurRadius: 2, color: Colors.white10),
    Shadow(offset: Offset(1.0, 1.0), blurRadius: 1, color: Colors.grey),
  ],
);

const connectMessage = Text(textAlign: TextAlign.center, StringManager.connectMessage1);
