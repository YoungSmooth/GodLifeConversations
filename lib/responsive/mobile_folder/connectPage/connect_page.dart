// ignore_for_file: depend_on_referenced_packages, unused_local_variable

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../resources/color_manager.dart';
import '../../../resources/font_size_manager.dart';
import '../../../resources/string_manager.dart';
import '../../dektop_folder/constant_parts/constants.dart';

class ConnectPage extends StatelessWidget {
  const ConnectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 100,
            width: double.infinity,
            child: Center(
              child: Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: connectMessage),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              decoration: BoxDecoration(
                color: ColorManager.blackOp0_2,
                border: Border.all(width: 1.2, color: ColorManager.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: NeumorphicIcon(
                      Icons.location_on,
                      size: 40,
                      style: const NeumorphicStyle(
                          color: ColorManager.black, depth: 3, intensity: 0.99),
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
                            fontWeight: FontWeight.bold,
                            fontSize: FontSizeManager.s13),
                        style: const NeumorphicStyle(
                          color: ColorManager.black,
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
                          fontWeight: FontWeight.bold,
                          fontSize: FontSizeManager.s20),
                      style: const NeumorphicStyle(
                          color: ColorManager.white, depth: 5, intensity: 0.99),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: openTelegram,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: ColorManager.blackOp0_2,
                        border:
                            Border.all(width: 1.2, color: ColorManager.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            NeumorphicIcon(
                              Icons.telegram,
                              size: 40,
                              style: const NeumorphicStyle(
                                  color: ColorManager.black,
                                  depth: 3,
                                  intensity: 0.99),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: NeumorphicText(
                                StringManager.telegram,
                                textStyle: NeumorphicTextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: FontSizeManager.s15),
                                style: const NeumorphicStyle(
                                    color: ColorManager.white,
                                    depth: 5,
                                    intensity: 0.99),
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
                          color: ColorManager.black.withOpacity(0.2),
                          border:
                              Border.all(width: 1.2, color: ColorManager.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              NeumorphicIcon(
                                Icons.facebook,
                                size: 40,
                                style: const NeumorphicStyle(
                                    color: ColorManager.black,
                                    depth: 3,
                                    intensity: 0.99),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: NeumorphicText(
                                  StringManager.facebook,
                                  textStyle: NeumorphicTextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: FontSizeManager.s15),
                                  style: const NeumorphicStyle(
                                    color: ColorManager.white,
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
                          color: ColorManager.blackOp0_2,
                          border:
                              Border.all(width: 1.2, color: ColorManager.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              NeumorphicIcon(
                                Icons.whatsapp,
                                size: 40,
                                style: const NeumorphicStyle(
                                    color: ColorManager.black,
                                    depth: 3,
                                    intensity: 0.99),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: NeumorphicText(
                                  StringManager.whatsApp,
                                  textStyle: NeumorphicTextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: FontSizeManager.s15),
                                  style: const NeumorphicStyle(
                                      color: ColorManager.white,
                                      depth: 5,
                                      intensity: 0.99),
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
                          color: ColorManager.black.withOpacity(0.2),
                          border:
                              Border.all(width: 1.2, color: ColorManager.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              NeumorphicIcon(
                                Icons.mail,
                                size: 40,
                                style: const NeumorphicStyle(
                                    color: ColorManager.black,
                                    depth: 3,
                                    intensity: 0.99),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: NeumorphicText(
                                  StringManager.email,
                                  textStyle: NeumorphicTextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: FontSizeManager.s15),
                                  style: const NeumorphicStyle(
                                      color: ColorManager.white,
                                      depth: 5,
                                      intensity: 0.99),
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
                          color: ColorManager.black.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(width: 1.2, color: ColorManager.black),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              NeumorphicIcon(
                                Icons.call,
                                size: 40,
                                style: const NeumorphicStyle(
                                    color: ColorManager.black,
                                    depth: 3,
                                    intensity: 0.99),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: NeumorphicText(
                                  StringManager.call,
                                  textStyle: NeumorphicTextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: FontSizeManager.s15),
                                  style: const NeumorphicStyle(
                                      color: ColorManager.white,
                                      depth: 5,
                                      intensity: 0.99),
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
    );
  }
}

Future makePhoneCall() async {
  const phoneNumber = '+2347034975428';
  final Uri url = Uri.parse('tel:$phoneNumber');

  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  }
}

Future openWhatsapp() async {
  final Uri url =
      Uri.parse("'https://chat.whatsapp.com/LNbsEodyYmaBuMMsdbPcBb'");
  if (await canLaunchUrl(url)) {
    await launchUrl(
      url,
      mode: LaunchMode.platformDefault,
    );
  }
}

Future openFacebook() async {
  final Uri url = Uri.parse('https://facebook.com');
  if (await canLaunchUrl(url)) {
    await launchUrl(url, mode: LaunchMode.platformDefault);
  }
}

Future openTelegram() async {
  final Uri url = Uri.parse('https:bit.ly/33P2993');
  if (await canLaunchUrl(url)) {
    await launchUrl(url, mode: LaunchMode.platformDefault);
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
