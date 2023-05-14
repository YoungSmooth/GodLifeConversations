import 'package:flutter/material.dart';
import 'package:god_life_conversations/models/roles_model.dart';

import '../models/gender.dart';

const departmentRoles = {
  Roles.usher: Role(
    'Usher',
    Color.fromARGB(255, 0, 155, 8),
  ),
  Roles.chorister: Role(
    'Chorister',
    Color.fromARGB(215, 225, 255, 30),
  ),
  Roles.pastor: Role(
    'Pastor',
    Color.fromARGB(255, 255, 102, 128),
  ),
  Roles.other: Role(
    'Other',
    Color.fromARGB(255, 0, 208, 255),
  ),
};

final selectGender = {
  Gender.male: SingleGender(genderType: 'Male', color: Colors.blue),
  Gender.female: SingleGender(genderType: 'Female', color: Colors.pink),
};
