import 'package:flutter/cupertino.dart';

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
      scrollDirection: Axis.vertical,
      children: [
        MessageStyle(
          messageOwner: 'Pastor Victor',
          messageTitle: 'Christos',
          messageImage: Image.network(
            'https://images.unsplash.com/photo-1610737245930-e4f41bab0b6b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA0fHxtdXNpY3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
            fit: BoxFit.cover,
          ),
        ),
        MessageStyle(
          messageOwner: 'Pastor Victor',
          messageTitle: 'Roses are Red',
          messageImage: Image.network(
            'https://images.unsplash.com/photo-1511379938547-c1f69419868d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bXVzaWN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
            fit: BoxFit.cover,
          ),
        ),
        MessageStyle(
          messageOwner: 'Pastor Victor Joseph',
          messageTitle: 'Dreams and Vidions',
          messageImage: Image.network(
            'https://plus.unsplash.com/premium_photo-1661438277977-04b186690e10?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nzl8fG11c2ljfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
            fit: BoxFit.cover,
          ),
        ),
        MessageStyle(
          messageOwner: 'Pastor Victor Joseph',
          messageTitle: 'Relationship Tips',
          messageImage: Image.network(
            'https://plus.unsplash.com/premium_photo-1661503080775-4c944f7425a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTd8fG11c2ljfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}