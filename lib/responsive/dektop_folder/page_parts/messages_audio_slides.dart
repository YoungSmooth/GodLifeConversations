// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class AudioSlides extends StatelessWidget {
  const AudioSlides({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 400,
      child: Row(
        children: [
          Expanded(
            child: ImageSlideshow(
              width: 500,
              height: 350,
              indicatorBackgroundColor: Colors.black,
              indicatorColor: Colors.white,
              autoPlayInterval: 5000,
              isLoop: true,
              children: [
                Image.asset(
                  'lib/assets/wb1.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'lib/assets/wb2.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'lib/assets/wb3.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'lib/assets/wb4.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'lib/assets/wb5.jpg',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
