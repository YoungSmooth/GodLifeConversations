import 'package:flutter/material.dart';
import 'package:god_life_conversations/constants.dart';
import 'package:god_life_conversations/responsive/mobile_folder/homePage_tabs/homePage_inspirations.dart';
import 'package:god_life_conversations/utilities.dart/my_box.dart';
import 'package:god_life_conversations/utilities.dart/my_tile.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'components/glass_Box.dart';
import 'components/my_bottomBar.dart';
import 'homePage_tabs/message.dart';
import 'homePage_tabs/messageStyle.dart';
import 'package:blur/blur.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  // bottom bar navigation
  int _currentBottomIndex = 0;
  void _bottomIndexChange(int? index) {
    setState(() {
      _currentBottomIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.grey.shade200,
      bottomNavigationBar: GlassBox(
        child: BottomBar(
          index: _currentBottomIndex,
          onTap: _bottomIndexChange,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
              SizedBox(
                // color: Colors.blueGrey,
                height: 540,
                child: DefaultTabController(
                  length: 2,
                  child: Scaffold(
                    extendBody: true,
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
      ),
    );
  }
}
