import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../resources/color_manager.dart';
import '../../../resources/string_manager.dart';
import '../pages/desktop_about_page.dart';
import '../pages/desktop_connect_page.dart';
import '../pages/desktop_events_page.dart';
import '../pages/desktop_give_page.dart';
import '../pages/desktop_home_page.dart';
import '../pages/desktop_messages_page.dart';
import '../pages/desktop_serve_page.dart';

class FootNote extends StatelessWidget {
  const FootNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(color: ColorManager.greyS600),
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                children: [
                  Padding(padding: const EdgeInsets.all(30), child: Image.asset('lib/assets/logowhite.png')),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DesktopScaffold()));
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(StringManager.homeCAPS, style: TextStyle(color: ColorManager.black, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DesktopConnectPage()));
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(StringManager.connectCAPS, style: TextStyle(color: ColorManager.black, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DesktopMessagesPage()));
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(StringManager.messagesCAPS, style: TextStyle(color: ColorManager.black, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DesktopServePage()));
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(StringManager.serveCAPS, style: TextStyle(color: ColorManager.black, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DesktopEventsPage()));
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(StringManager.eventsCAPS, style: TextStyle(color: ColorManager.black, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DesktopGivePage()));
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(StringManager.giveCAPS, style: TextStyle(color: ColorManager.black, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DesktopAboutPage()));
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(StringManager.aboutCAPS, style: TextStyle(color: ColorManager.black, fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child:
                              NeumorphicIcon(Icons.telegram, size: 25, style: const NeumorphicStyle(color: ColorManager.black, depth: 1, intensity: 0.99)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child:
                              NeumorphicIcon(Icons.facebook, size: 25, style: const NeumorphicStyle(color: ColorManager.black, depth: 1, intensity: 0.99)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child:
                              NeumorphicIcon(Icons.whatsapp, size: 25, style: const NeumorphicStyle(color: ColorManager.black, depth: 1, intensity: 0.99)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: NeumorphicIcon(Icons.mail, size: 25, style: const NeumorphicStyle(color: ColorManager.black, depth: 1, intensity: 0.99)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: NeumorphicIcon(Icons.call, size: 25, style: const NeumorphicStyle(color: ColorManager.black, depth: 1, intensity: 0.99)),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DesktopConnectPage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [Text(StringManager.contactUsCAPS, style: TextStyle(fontWeight: FontWeight.bold, color: ColorManager.black))],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [Text(StringManager.copyrightCAPS, style: TextStyle(fontWeight: FontWeight.bold, color: ColorManager.black))],
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
