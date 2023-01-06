// ignore_for_file: depend_on_referenced_packages, unused_local_variable
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../pages/desktop_messages_page.dart';

class MessagesHeader extends StatelessWidget {
  const MessagesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SizedBox(
                child: Image.network(
              'https://images.unsplash.com/photo-1537495329792-41ae41ad3bf0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fGJvb2tzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
              fit: BoxFit.cover,
            )),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const DesktopMessagesPage(),
                        ),
                      );
                    },
                    child: NeumorphicText(
                      'MESSAGES',
                      style: const NeumorphicStyle(
                          shadowDarkColor: Colors.grey,
                          color: Colors.black,
                          border:
                              NeumorphicBorder(color: Colors.white, width: 0.8),
                          depth: 2,
                          intensity: 0.95),
                      textStyle: NeumorphicTextStyle(
                          fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: RichText(
                      textAlign: TextAlign.center,
                      selectionColor: Colors.black,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'Engage the GodLife that is in you, through these collection of messages designed to give you answers to your questions and prayers.',
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                backgroundColor: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  NeumorphicIcon(
                    Icons.library_books_sharp,
                    size: 40,
                    style: const NeumorphicStyle(
                        color: Colors.black, depth: 3, intensity: 0.99),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future launchEmail() async {
  String recipient = 'chukwuonyekachi@gmail.com';
  String subject = 'I would like to join GLC';
  String body = 'I will love to join GLC.';

  final Uri email = Uri(
    scheme: 'mailto',
    path: recipient,
    query: 'subject='
        '${Uri.encodeComponent(subject)}&body=${Uri.encodeComponent(body)}',
  );

  if (await canLaunchUrl(email)) {
    await launchUrl(email);
  } else {
    String text = 'Cannot send email';
  }
}
