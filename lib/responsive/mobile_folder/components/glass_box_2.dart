// ignore_for_file: file_names, prefer_typing_uninitialized_variables

import 'dart:ui';
import 'package:flutter/material.dart';

class GlassBox2 extends StatelessWidget {
  final child;

  const GlassBox2({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        padding: const EdgeInsets.all(2),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          ),
          child: Container(
            alignment: Alignment.bottomCenter,
            child: child,
          ),
        ),
      ),
    );
  }
}
