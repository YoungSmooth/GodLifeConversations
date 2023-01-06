// ignore_for_file: depend_on_referenced_packages, deprecated_member_use

import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class JoinUs extends StatelessWidget {
  const JoinUs({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: NeumorphicText(
                    'JOIN US THIS SUNDAY',
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
                          text: 'Every service is designed for your ',
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 15),
                        ),
                        TextSpan(
                          text: 'spiritual, mental and emotional growth 🤗. ',
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'Join us onsite or online as we grow in Gods presence this Sunday by 4:00 P.M (WAT)',
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: NeumorphicText(
                            'Onsite',
                            style: const NeumorphicStyle(
                                shadowDarkColor: Colors.grey,
                                color: Colors.black,
                                border: NeumorphicBorder(
                                    color: Colors.white, width: 0.1),
                                depth: 2,
                                intensity: 0.55),
                            textStyle: NeumorphicTextStyle(
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          height: 100,
                          width: 190,
                          child: Text(
                            textAlign: TextAlign.center,
                            'Desire of All Nations Cathederal, 9 Effanga Offiong Street, Off Edibe Edibe Road, Southern Calabar',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),
                        NeumorphicIcon(
                          Icons.location_on,
                          size: 40,
                          style: const NeumorphicStyle(
                              color: Colors.black, depth: 3, intensity: 0.99),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: NeumorphicText(
                            'Online',
                            style: const NeumorphicStyle(
                                shadowDarkColor: Colors.grey,
                                color: Colors.black,
                                border: NeumorphicBorder(
                                    color: Colors.white, width: 0.1),
                                depth: 2,
                                intensity: 0.55),
                            textStyle: NeumorphicTextStyle(
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        InkWell(
                          onTap: openTelegram,
                          child: Container(
                            color: Colors.white,
                            height: 100,
                            width: 100,
                            child: const Text(
                              '     Telegram',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blueAccent),
                            ),
                          ),
                        ),
                        NeumorphicIcon(
                          Icons.telegram_sharp,
                          size: 40,
                          style: const NeumorphicStyle(
                              color: Colors.black, depth: 3, intensity: 0.99),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              child: Image.network(
                'https://allnbc.com/wp-content/uploads/2020/11/all-nations-66.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future openTelegram() async {
    const url = 'https:bit.ly/33P2993';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        enableJavaScript: false,
      );
    }
  }
}
