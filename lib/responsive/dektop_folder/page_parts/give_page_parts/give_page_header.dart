// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../../../../resources/color_manager.dart';
import '../../../../resources/font_size_manager.dart';
import '../../../../resources/string_manager.dart';
import '../../pages/desktop_home_page.dart';

class GivePageHeader extends StatelessWidget {
  const GivePageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 350,
          width: double.infinity,
          child: Image.network(
            'https://images.unsplash.com/photo-1579621970588-a35d0e7ab9b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Z2l2ZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
            fit: BoxFit.cover,
            width: double.infinity,
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
                    width: 200,
                    decoration: BoxDecoration(
                      color: ColorManager.blackOp0_3,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 1.2, color: ColorManager.black),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          StringManager.giveSpaced,
                          style: TextStyle(
                            color: ColorManager.white,
                            fontWeight: FontWeight.w500,
                            fontSize: FontSizeManager.s30,
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
      ],
    );
  }
}
