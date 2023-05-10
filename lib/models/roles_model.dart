import 'package:flutter/material.dart';

enum Roles {
  usher,
  pastor,
  chorister,
  other,
}

class Role {
  const Role(this.role, this.color);
  final String role;
  final Color color;
}
