// ignore_for_file: depend_on_referenced_packages
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../../../../resources/color_manager.dart';
import '../../../../resources/font_size_manager.dart';
import '../../../../resources/string_manager.dart';
import '../../pages/desktop_serve_page.dart';

class ServeHeader extends StatelessWidget {
  const ServeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 400,
          width: double.infinity,
          child: Image.network(
            'https://images.unsplash.com/photo-1521791136064-7986c2920216?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTF8fGhlbHAlMjBwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
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
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const DesktopServePage(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 250),
                    child: Container(
                      height: 70,
                      width: 180,
                      decoration: BoxDecoration(
                        color: ColorManager.blackOp0_3,
                        borderRadius: BorderRadius.circular(100),
                        border:
                            Border.all(width: 1.2, color: ColorManager.black),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: Text(
                            StringManager.serveSpaced,
                            style: TextStyle(
                                color: ColorManager.white,
                                fontWeight: FontWeight.w500,
                                fontSize: FontSizeManager.s30),
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
                      StringManager.serveBody1,
                      style: const NeumorphicStyle(
                          shadowDarkColor: Colors.black,
                          color: ColorManager.white,
                          shadowLightColor: ColorManager.black,
                          depth: 1,
                          intensity: 0.5),
                      textStyle:
                          NeumorphicTextStyle(fontWeight: FontWeight.bold),
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
