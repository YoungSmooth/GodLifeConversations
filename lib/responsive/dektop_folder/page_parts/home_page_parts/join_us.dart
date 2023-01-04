import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../resources/font_size_manager.dart';
import '../../../../resources/string_manager.dart';

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
              children: [
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: NeumorphicText(
                    StringManager.joinUs,
                    style: const NeumorphicStyle(
                      shadowDarkColor: Colors.grey,
                      color: Colors.black,
                      border: NeumorphicBorder(color: Colors.white, width: 0.8),
                      depth: 2,
                      intensity: 0.95,
                    ),
                    textStyle: NeumorphicTextStyle(fontSize: FontSizeManager.s40, fontWeight: FontWeight.bold),
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
                          text: StringManager.onsiteBody1,
                          style: TextStyle(color: Colors.grey.shade600, fontSize: FontSizeManager.s15),
                        ),
                        TextSpan(
                          text: StringManager.onsiteBody2,
                          style: TextStyle(color: Colors.grey.shade600, fontSize: FontSizeManager.s14, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: StringManager.onsiteBody3,
                          style: TextStyle(color: Colors.grey.shade600, fontSize: FontSizeManager.s15),
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
                            StringManager.onsite,
                            style: const NeumorphicStyle(
                                shadowDarkColor: Colors.grey,
                                color: Colors.black,
                                border: NeumorphicBorder(color: Colors.white, width: 0.1),
                                depth: 2,
                                intensity: 0.55),
                            textStyle: NeumorphicTextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          height: 100,
                          width: 190,
                          child: Text(
                            textAlign: TextAlign.center,
                            StringManager.ourLocationBody,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),
                        NeumorphicIcon(
                          Icons.location_on,
                          size: 40,
                          style: const NeumorphicStyle(color: Colors.black, depth: 3, intensity: 0.99),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: NeumorphicText(
                            StringManager.online,
                            style: const NeumorphicStyle(
                                shadowDarkColor: Colors.grey,
                                color: Colors.black,
                                border: NeumorphicBorder(color: Colors.white, width: 0.1),
                                depth: 2,
                                intensity: 0.55),
                            textStyle: NeumorphicTextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        InkWell(
                          onTap: openTelegram,
                          child: Container(
                            color: Colors.white,
                            height: 100,
                            width: 100,
                            child: const Text(
                              '     ${StringManager.telegram}',
                              style: TextStyle(fontWeight: FontWeight.w400, color: Colors.blueAccent),
                            ),
                          ),
                        ),
                        NeumorphicIcon(
                          Icons.telegram_sharp,
                          size: 40,
                          style: const NeumorphicStyle(color: Colors.black, depth: 3, intensity: 0.99),
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
    final Uri url = Uri.parse('https:bit.ly/33P2993');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }
}
