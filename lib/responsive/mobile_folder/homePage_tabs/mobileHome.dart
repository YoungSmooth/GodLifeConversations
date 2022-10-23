// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../../dektop_folder/constant_parts/constants.dart';
import 'homePage_inspirations.dart';
import 'message.dart';
import 'package:blur/blur.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: ImageSlideshow(
                    width: double.infinity,
                    height: 200,
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
                    ],
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 145),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: SizedBox(
                              height: 17,
                              width: 320,
                              child: AnimatedTextKit(
                                totalRepeatCount: 500,
                                animatedTexts: [
                                  ColorizeAnimatedText(
                                    'WELCOME TO GODLIFE CONVERSATIONS',
                                    textStyle: colorizeTextStyleMobile,
                                    colors: colorizeColors,
                                    textDirection: TextDirection.ltr,
                                  ),
                                  ColorizeAnimatedText(
                                    'WELCOME TO GODLIFE CONVERSATIONS',
                                    textStyle: colorizeTextStyleMobile,
                                    colors: colorizeColors,
                                    textDirection: TextDirection.ltr,
                                  ),
                                ],
                                isRepeatingAnimation: true,
                              ),
                            ).frosted(
                              blur: 1,
                              borderRadius: BorderRadius.circular(10),
                              padding: const EdgeInsets.all(5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              // color: Colors.blueGrey,
              height: 670,
              child: DefaultTabController(
                length: 2,
                child: Scaffold(
                  // extendBody: true,
                  body: Column(
                    children: const [
                      TabBar(
                        labelColor: Colors.black,
                        tabs: [
                          Tab(
                            text: 'Notes',
                          ),
                          Tab(
                            text: 'Messages',
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            HomePageInspirations(),
                            Messages(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
