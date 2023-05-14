// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

enum Gender {
  male,
  female,
}

class SingleGender {
  final String genderType;
  final Color color;
  SingleGender({
    required this.genderType,
    required this.color,
  });
}
