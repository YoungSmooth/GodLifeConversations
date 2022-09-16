// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class GiveHeader extends StatelessWidget {
  const GiveHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
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
                  child: Padding(
                    padding: const EdgeInsets.only(top: 250),
                    child: Container(
                      height: 70,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 1.2, color: Colors.black),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: Text(
                            'G I V E',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 30,
                            ),
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
                      'Impact the lives of people, and watch Gods goodness overflow.',
                      style: const NeumorphicStyle(
                          shadowDarkColor: Colors.black,
                          color: Colors.white,
                          shadowLightColor: Colors.black,
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
