import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../../resources/color_manager.dart';
import '../../../../resources/font_size_manager.dart';
import '../../../../resources/string_manager.dart';
import '../../pages/desktop_give_page.dart';

class GiveHeader extends StatelessWidget {
  const GiveHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 400,
          width: double.infinity,
          child: Image.network(
            'https://images.unsplash.com/photo-1579621970588-a35d0e7ab9b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Z2l2ZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DesktopGivePage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 250),
                    child: Container(
                      height: 70,
                      width: 160,
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
                            style: TextStyle(color: ColorManager.white, fontWeight: FontWeight.w500, fontSize: FontSizeManager.s30),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Center(
                    child: NeumorphicText(
                      StringManager.giveBody,
                      style: const NeumorphicStyle(
                          shadowDarkColor: ColorManager.black, color: ColorManager.white, shadowLightColor: ColorManager.black, depth: 1, intensity: 0.5),
                      textStyle: NeumorphicTextStyle(fontWeight: FontWeight.bold),
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
