import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../../resources/color_manager.dart';
import '../../../../resources/font_size_manager.dart';
import '../../../../resources/string_manager.dart';
import '../../pages/desktop_home_page.dart';

class AboutPageHeader extends StatelessWidget {
  const AboutPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 350,
          width: double.infinity,
          child: Image.asset(
            'lib/assets/wb5.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const DesktopScaffold(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorManager.black,
                  border: Border.all(color: ColorManager.white, width: 2),
                ),
                child: Image.asset('lib/assets/logowhite.png'),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 130),
                  child: Container(
                    height: 70,
                    width: 250,
                    decoration: BoxDecoration(
                      color: ColorManager.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 1.2, color: ColorManager.black),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          StringManager.aboutSpaced,
                          style: TextStyle(color: ColorManager.white, fontWeight: FontWeight.w500, fontSize: FontSizeManager.s30),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
