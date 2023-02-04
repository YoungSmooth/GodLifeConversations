import 'package:flutter/material.dart';
import 'package:god_life_conversations/utilities.dart/colors.dart';

import '../../../resources/color_manager.dart';
import '../../../resources/font_size_manager.dart';
import '../../../resources/string_manager.dart';

const colorizeColors = [
  ColorManager.black,
  ColorManager.grey,
  ColorManager.white,
  mainColor
];

final colorizeTextStyle = TextStyle(
  fontWeight: FontWeight.w900,
  fontSize: FontSizeManager.s50,
  shadows: [
    const Shadow(
        offset: Offset(4.0, 4.0),
        blurRadius: 3,
        color: Color.fromARGB(99, 64, 64, 64)),
    Shadow(
        offset: const Offset(1.0, 1.0),
        blurRadius: 8,
        color: ColorManager.greyS100),
  ],
);

const colorizeTextStyleMobile = TextStyle(
  fontWeight: FontWeight.w900,
  fontSize: FontSizeManager.s15,
  shadows: [
    Shadow(
        offset: Offset(2.0, 2.0), blurRadius: 2, color: ColorManager.white10),
    Shadow(offset: Offset(1.0, 1.0), blurRadius: 1, color: ColorManager.grey),
  ],
);

const connectMessage =
    Text(textAlign: TextAlign.center, StringManager.connectMessage1);
