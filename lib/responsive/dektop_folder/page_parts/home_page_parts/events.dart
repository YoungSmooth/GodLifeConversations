// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../../../../resources/color_manager.dart';
import '../../../../resources/font_size_manager.dart';
import '../../../../resources/string_manager.dart';
import '../../pages/desktop_events_page.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DesktopEventsPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(1),
                    child: NeumorphicText(
                      StringManager.eventsCAPS,
                      style: const NeumorphicStyle(
                          shadowDarkColor: ColorManager.grey,
                          color: ColorManager.black,
                          border: NeumorphicBorder(
                              color: ColorManager.white, width: 0.8),
                          depth: 2,
                          intensity: 0.95),
                      textStyle: NeumorphicTextStyle(
                          fontSize: FontSizeManager.s40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(24),
                  child: Text(
                    StringManager.eventPageBody2,
                    textAlign: TextAlign.center,
                  ),
                ),
                NeumorphicIcon(
                  Icons.event_available,
                  size: 40,
                  style: const NeumorphicStyle(
                      color: ColorManager.black, depth: 3, intensity: 0.99),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              child: Image.network(
                'https://images.unsplash.com/photo-1563436798278-f2a5694a5050?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fHJlZCUyMHJvc2VzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
