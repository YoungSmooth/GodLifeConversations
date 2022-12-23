import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GlcFeed extends StatefulWidget {
  const GlcFeed({super.key});

  @override
  State<GlcFeed> createState() => _GlcFeedState();
}

class _GlcFeedState extends State<GlcFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: const Text('Post'),
        icon: const Icon(Icons.post_add_rounded),
        backgroundColor: Colors.black87,
      ),
    );
  }
}
