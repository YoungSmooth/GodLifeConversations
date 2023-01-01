import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../../resources/string_manager.dart';
import '../../pages/desktop_connect_page.dart';

class SecondHeaderBackground extends StatelessWidget {
  const SecondHeaderBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 400,
          width: double.infinity,
          child: Image.network(
            'https://allnbc.com/wp-content/uploads/2020/11/all-nations-137.jpg',
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
                        builder: (context) => const DesktopConnectPage(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 250),
                    child: Container(
                      height: 70,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 1.2, color: Colors.black),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: Text(
                            StringManager.connectSpaced,
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 30),
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
                      StringManager.connectMessage2,
                      style: const NeumorphicStyle(
                          shadowDarkColor: Colors.black, color: Colors.white, shadowLightColor: Colors.black, depth: 1, intensity: 0.5),
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
