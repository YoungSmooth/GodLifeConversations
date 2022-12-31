import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

 Future<File?> pickImage(ImageSource source) async {
  final ImagePicker imagePicker = ImagePicker();

  XFile? file = await imagePicker.pickImage(source: source);

  if (file == null) return null;

  return File(file.path);
}

void showSnackBar(String content, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.grey.shade800,
      elevation: 1.0,
      padding: const EdgeInsets.all(5),
      content: Text(content),
    ),
  );
}

typedef DialogOptionBuilder<T> = Map<String, T?> Function();

Future showGenericDialog({
  required BuildContext context,
  required String title,
  required String content,
  required DialogOptionBuilder optionBuilder,
}) {
  final options = optionBuilder();
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('An error occurred'),
        content: Text(content),
        actions: options.keys.map((optionTitle) {
          final value = options[optionTitle];
          return TextButton(
            onPressed: () {
              if (value == null) Navigator.of(context).pop();
              Navigator.of(context).pop(value);
            },
            child: Text(optionTitle),
          );
        }).toList(),
      );
    },
  );
}
