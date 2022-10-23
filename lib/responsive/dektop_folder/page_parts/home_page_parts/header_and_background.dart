// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:god_life_conversations/responsive/dektop_folder/pages/desktop_connect_page.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:blur/blur.dart';
import '../../constant_parts/constants.dart';
import '../../pages/desktop_about_page.dart';
import '../../pages/desktop_events_page.dart';
import '../../pages/desktop_give_page.dart';
import '../../pages/desktop_messages_page.dart';
import '../../pages/desktop_serve_page.dart';
import 'package:hovering/hovering.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HeaderBackground extends StatelessWidget {
  const HeaderBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          height: 700,
          width: double.infinity,
          child: ImageSlideshow(
            width: double.infinity,
            height: 700,
            indicatorBackgroundColor: Colors.black,
            indicatorColor: Colors.white,
            autoPlayInterval: 10000,
            isLoop: true,
            children: [
              Image.network(
                'https://images.unsplash.com/photo-1597524678053-5e6fef52d8a3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGxhdWdodGVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://images.unsplash.com/photo-1589483232748-515c025575bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGxhdWdodGVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://plus.unsplash.com/premium_photo-1661265914030-b06f820680a6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nzh8fGxhdWdodGVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
                fit: BoxFit.cover,
              ),
              // Image.asset(
              //   'lib/assets/wb5.jpg',
              //   fit: BoxFit.cover,
              // ),
            ],
          ),
        ),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black,
                  border: Border.all(color: Colors.white, width: 2)),
              child: Image.asset('lib/assets/logowhite.png'),
            ),
          ),
        ),
        Positioned(
          right: 13,
          top: 50,
          child: SizedBox(
            width: 520,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const DesktopConnectPage(),
                      ),
                    );
                  },
                  child: HoverContainer(
                    height: 35,
                    hoverHeight: 30,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 0.7, color: Colors.white),
                    ),
                    hoverDecoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 0.7, color: Colors.black),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(15, 5, 15, 8),
                      child: Center(
                        child: Text(
                          'Connect',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
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
                  child: HoverContainer(
                    height: 35,
                    hoverHeight: 30,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 0.7, color: Colors.white),
                    ),
                    hoverDecoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 0.7, color: Colors.black),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(15, 5, 15, 8),
                      child: Center(
                        child: Text(
                          'Messages',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
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
                  child: HoverContainer(
                    height: 35,
                    hoverHeight: 30,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 0.7, color: Colors.white),
                    ),
                    hoverDecoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 0.7, color: Colors.black),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(15, 5, 15, 8),
                      child: Center(
                        child: Text(
                          'Serve',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
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
                  child: HoverContainer(
                    height: 35,
                    hoverHeight: 30,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 0.7, color: Colors.white),
                    ),
                    hoverDecoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 0.7, color: Colors.black),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(15, 5, 15, 8),
                      child: Center(
                        child: Text(
                          'Events',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
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
                  child: HoverContainer(
                    height: 35,
                    hoverHeight: 30,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 0.7, color: Colors.white),
                    ),
                    hoverDecoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 0.7, color: Colors.black),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(15, 5, 15, 8),
                      child: Center(
                        child: Text(
                          'Give',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
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
                  child: HoverContainer(
                    height: 35,
                    hoverHeight: 30,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 0.7, color: Colors.white),
                    ),
                    hoverDecoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 0.7, color: Colors.black),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(15, 5, 15, 8),
                      child: Center(
                        child: Text(
                          'About',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 400),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      height: 200,
                      width: 450,
                      child: AnimatedTextKit(
                        animatedTexts: [
                          ColorizeAnimatedText(
                            'WELCOME TO GODLIFE CONVERSATIONS',
                            textStyle: colorizeTextStyle,
                            colors: colorizeColors,
                          ),
                          ColorizeAnimatedText(
                            'WELCOME TO GODLIFE CONVERSATIONS',
                            textStyle: colorizeTextStyle,
                            colors: colorizeColors,
                          ),
                        ],
                        isRepeatingAnimation: true,
                      ),
                    ).frosted(
                      blur: 1,
                      borderRadius: BorderRadius.circular(10),
                      padding: const EdgeInsets.all(8),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
