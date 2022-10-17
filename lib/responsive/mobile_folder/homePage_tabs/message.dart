import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'messageStyle.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        MessageStyle(
          messageOwner: 'Pastor Victor',
          messageTitle: 'Christos',
        ),
        MessageStyle(
          messageOwner: 'Pastor Victor',
          messageTitle: 'Roses are Red',
        ),
      ],
    );
  }
}
