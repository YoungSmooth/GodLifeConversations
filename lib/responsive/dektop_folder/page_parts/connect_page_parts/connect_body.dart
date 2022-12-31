// ignore_for_file: depend_on_referenced_packages, deprecated_member_use
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constant_parts/constants.dart';

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
                    child: Padding(padding: EdgeInsets.only(left: 100, right: 100), child: connectMessage),
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
                            style: const NeumorphicStyle(color: Colors.black, depth: 3, intensity: 0.99),
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
                              textStyle: NeumorphicTextStyle(fontWeight: FontWeight.bold, fontSize: 13),
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
                            textStyle: NeumorphicTextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
            InkWell(
              onTap: openTelegram,
              child: Padding(
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
                                style: const NeumorphicStyle(color: Colors.black, depth: 3, intensity: 0.99),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: NeumorphicText(
                                  'Telegram',
                                  textStyle: NeumorphicTextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
                    InkWell(
                      onTap: openFacebook,
                      child: Padding(
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
                                  style: const NeumorphicStyle(color: Colors.black, depth: 3, intensity: 0.99),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: NeumorphicText(
                                    'Facebook',
                                    textStyle: NeumorphicTextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
                    ),
                    InkWell(
                      onTap: openWhatsapp,
                      child: Padding(
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
                                  style: const NeumorphicStyle(color: Colors.black, depth: 3, intensity: 0.99),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: NeumorphicText(
                                    'WhatsApp',
                                    textStyle: NeumorphicTextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
                    ),
                    InkWell(
                      onTap: launchEmail,
                      child: Padding(
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
                                  style: const NeumorphicStyle(color: Colors.black, depth: 3, intensity: 0.99),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: NeumorphicText(
                                    'Email',
                                    textStyle: NeumorphicTextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
                    ),
                    InkWell(
                      onTap: makePhoneCall,
                      child: Padding(
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
                                  style: const NeumorphicStyle(color: Colors.black, depth: 3, intensity: 0.99),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: NeumorphicText(
                                    'Call',
                                    textStyle: NeumorphicTextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future makePhoneCall() async {
    const phoneNumber = '+2347034975428';
    const url = 'tel:$phoneNumber';

    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  Future openWhatsapp() async {
    const url = 'https://chat.whatsapp.com/LNbsEodyYmaBuMMsdbPcBb';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        enableJavaScript: false,
      );
    }
  }

  Future openFacebook() async {
    const url = 'https://facebook.com';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        enableJavaScript: false,
      );
    }
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
  }
  //  else {
  //   String text = 'Cannot send email';
  // }
}
