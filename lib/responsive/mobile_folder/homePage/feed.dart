import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:god_life_conversations/responsive/mobile_folder/components/glass_Box.dart';
import 'package:provider/provider.dart';
import '../../../providers/user_provider.dart';

import 'package:god_life_conversations/models/user.dart' as model;

class GlcFeed extends StatefulWidget {
  const GlcFeed({super.key});

  @override
  State<GlcFeed> createState() => _GlcFeedState();
}

class _GlcFeedState extends State<GlcFeed> {
  @override
  Widget build(BuildContext context) {
    model.User user = Provider.of<UserProvider>(context).getUser;
    Widget makeDismissible({required Widget child}) => GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => Navigator.of(context).pop(),
          child: GestureDetector(
            onTap: () {},
            child: child,
          ),
        );

    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
          showModalBottomSheet<void>(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (BuildContext context) {
              return makeDismissible(
                child: DraggableScrollableSheet(
                  initialChildSize: 0.7,
                  minChildSize: 0.5,
                  maxChildSize: 0.9,
                  builder: (_, controller) => Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: ListView(
                        controller: controller,
                        children: const <Widget>[
                          CircleAvatar(
                            radius: 60,
                            backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1622281631389-59e63d92760d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80'),
                          ),
                          TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Input Item Description',
                              border: OutlineInputBorder(),
                            ),
                            controller: null,
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Post',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
        label: const Text(
          'Post',
          style: TextStyle(color: Colors.white),
        ),
        icon: const Icon(
          Icons.post_add_rounded,
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
