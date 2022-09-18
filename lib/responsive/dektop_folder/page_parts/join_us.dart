// ignore_for_file: depend_on_referenced_packages

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
                const Padding(
                  padding: EdgeInsets.all(24),
                  child: Text(
                    'Every service is designed for your spiritual, mental and emotional growth. Join us onsite or online as we grow in Gods presence this Sunday by 4:00 P.M (WAT)',
                    textAlign: TextAlign.center,
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
                        Container(
                          color: Colors.white,
                          height: 100,
                          width: 100,
                          child: Text(
                            'bit.ly/33P2993',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey.shade600),
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
}
