// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class DesktopConnectBody extends StatelessWidget {
  const DesktopConnectBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: double.infinity,
      child: AspectRatio(
        aspectRatio: 2,
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 100, right: 100),
                      child: Text(
                          textAlign: TextAlign.center,
                          'We would love to connect with you. We have been praying for you and would love to grow with you. You can visit our location, connect with us via our social media platforms or contact us directly with the information below.'),
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                        border: Border.all(width: 1.2, color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: NeumorphicIcon(
                            Icons.location_on,
                            size: 40,
                            style: const NeumorphicStyle(
                                color: Colors.black, depth: 3, intensity: 0.99),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 90,
                            width: 190,
                            child: NeumorphicText(
                              textAlign: TextAlign.center,
                              'Desire of All Nations Cathederal, 9 Effanga Offiong Street, Off Edibe Edibe Road, Southern Calabar',
                              textStyle: NeumorphicTextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                              style: const NeumorphicStyle(
                                color: Colors.black,
                                depth: 5,
                                intensity: 0.99,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: NeumorphicText(
                            'Our Location',
                            textStyle: NeumorphicTextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                            style: const NeumorphicStyle(
                              color: Colors.white,
                              depth: 5,
                              intensity: 0.99,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.2),
                          border: Border.all(width: 1.2, color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            NeumorphicIcon(
                              Icons.telegram,
                              size: 40,
                              style: const NeumorphicStyle(
                                  color: Colors.black,
                                  depth: 3,
                                  intensity: 0.99),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: NeumorphicText(
                                'Telegram',
                                textStyle: NeumorphicTextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                                style: const NeumorphicStyle(
                                  color: Colors.white,
                                  depth: 5,
                                  intensity: 0.99,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.2),
                          border: Border.all(width: 1.2, color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            NeumorphicIcon(
                              Icons.facebook,
                              size: 40,
                              style: const NeumorphicStyle(
                                  color: Colors.black,
                                  depth: 3,
                                  intensity: 0.99),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: NeumorphicText(
                                'Facebook',
                                textStyle: NeumorphicTextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                                style: const NeumorphicStyle(
                                  color: Colors.white,
                                  depth: 5,
                                  intensity: 0.99,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.2),
                          border: Border.all(width: 1.2, color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            NeumorphicIcon(
                              Icons.whatsapp,
                              size: 40,
                              style: const NeumorphicStyle(
                                  color: Colors.black,
                                  depth: 3,
                                  intensity: 0.99),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: NeumorphicText(
                                'WhatsApp',
                                textStyle: NeumorphicTextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                                style: const NeumorphicStyle(
                                  color: Colors.white,
                                  depth: 5,
                                  intensity: 0.99,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.2),
                          border: Border.all(width: 1.2, color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            NeumorphicIcon(
                              Icons.mail,
                              size: 40,
                              style: const NeumorphicStyle(
                                  color: Colors.black,
                                  depth: 3,
                                  intensity: 0.99),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: NeumorphicText(
                                'Email',
                                textStyle: NeumorphicTextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                                style: const NeumorphicStyle(
                                  color: Colors.white,
                                  depth: 5,
                                  intensity: 0.99,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1.2, color: Colors.black),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            NeumorphicIcon(
                              Icons.call,
                              size: 40,
                              style: const NeumorphicStyle(
                                  color: Colors.black,
                                  depth: 3,
                                  intensity: 0.99),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: NeumorphicText(
                                'Call',
                                textStyle: NeumorphicTextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                                style: const NeumorphicStyle(
                                  color: Colors.white,
                                  depth: 5,
                                  intensity: 0.99,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
