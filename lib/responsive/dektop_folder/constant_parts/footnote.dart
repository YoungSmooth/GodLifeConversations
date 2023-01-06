// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:god_life_conversations/responsive/dektop_folder/pages/desktop_connect_page.dart';
import 'package:god_life_conversations/responsive/dektop_folder/pages/desktop_home_page.dart';
import '../pages/desktop_about_page.dart';
import '../pages/desktop_events_page.dart';
import '../pages/desktop_give_page.dart';
import '../pages/desktop_messages_page.dart';
import '../pages/desktop_serve_page.dart';

class FootNote extends StatelessWidget {
  const FootNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade600,
      ),
      child: Column(
        children: [
          Expanded(
            // flex: 3,
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: SizedBox(
                      // height: 60,
                      child: Image.asset('lib/assets/logowhite.png'),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const DesktopScaffold(),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'HOME',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const DesktopConnectPage(),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'CONNECT',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const DesktopMessagesPage(),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'MESSAGES',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const DesktopServePage(),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'SERVE',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const DesktopEventsPage(),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'EVENTS',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const DesktopGivePage(),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'GIVE',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const DesktopAboutPage(),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'ABOUT',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: NeumorphicIcon(
                            Icons.telegram,
                            size: 25,
                            style: const NeumorphicStyle(
                                color: Colors.black, depth: 1, intensity: 0.99),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: NeumorphicIcon(
                            Icons.facebook,
                            size: 25,
                            style: const NeumorphicStyle(
                                color: Colors.black, depth: 1, intensity: 0.99),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: NeumorphicIcon(
                            Icons.whatsapp,
                            size: 25,
                            style: const NeumorphicStyle(
                                color: Colors.black, depth: 1, intensity: 0.99),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: NeumorphicIcon(
                            Icons.mail,
                            size: 25,
                            style: const NeumorphicStyle(
                                color: Colors.black, depth: 1, intensity: 0.99),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: NeumorphicIcon(
                            Icons.call,
                            size: 25,
                            style: const NeumorphicStyle(
                                color: Colors.black, depth: 1, intensity: 0.99),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const DesktopConnectPage(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'CONTACT US',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          '© 2022 GODLIFE CONVERSATIONS',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        )
                      ],
                    ),
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
