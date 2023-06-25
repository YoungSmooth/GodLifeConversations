// ignore_for_file: depend_on_referenced_packages
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../../../../resources/color_manager.dart';
import '../../../../resources/font_size_manager.dart';
import '../../../../resources/string_manager.dart';

class ServeBody extends StatelessWidget {
  const ServeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(StringManager.serveBody2),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 400,
                    width: 300,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1632406895715-c9521b447fab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGFkbWluaXN0cmF0aW9ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  height: 200,
                  width: 300,
                  bottom: 20,
                  right: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10, left: 20),
                          child: Text(
                            StringManager.administration,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: FontSizeManager.s15),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            StringManager.administrationBody,
                            style: TextStyle(fontSize: FontSizeManager.s12),
                          ),
                        ),
                      ],
                    ).frosted(
                      blur: 1.5,
                      frostColor: ColorManager.white,
                      alignment: Alignment.center,
                      borderRadius: BorderRadius.circular(10),
                      frostOpacity: 0.01,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 400,
                    width: 300,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1575507479993-7bb702d5e966?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fG1lZGlhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  height: 200,
                  width: 300,
                  bottom: 20,
                  right: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10, left: 20),
                          child: Text(
                            StringManager.media,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: FontSizeManager.s15),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            StringManager.mediaBody,
                            style: TextStyle(fontSize: FontSizeManager.s12),
                          ),
                        ),
                      ],
                    ).frosted(
                      blur: 1.5,
                      frostColor: ColorManager.white,
                      alignment: Alignment.center,
                      borderRadius: BorderRadius.circular(10),
                      frostOpacity: 0.01,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 400,
                    width: 300,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1637035441749-cd75c0a598ae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjY3fHxtdXNpYyUyMHdvcnNoaXB8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  height: 200,
                  width: 300,
                  bottom: 20,
                  right: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10, left: 20),
                          child: Text(
                            StringManager.music,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: FontSizeManager.s15),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            StringManager.musicBody,
                            style: TextStyle(fontSize: FontSizeManager.s12),
                          ),
                        ),
                      ],
                    ).frosted(
                      blur: 1.5,
                      frostColor: ColorManager.white,
                      alignment: Alignment.center,
                      borderRadius: BorderRadius.circular(10),
                      frostOpacity: 0.01,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 400,
                    width: 300,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1590402494811-8ffd29f17543?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGZhY2lsaXR5JTIwbWFuYWdlbWVudHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  height: 200,
                  width: 300,
                  bottom: 20,
                  right: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10, left: 20),
                          child: Text(
                            StringManager.facilityManagement,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: FontSizeManager.s15),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            StringManager.facilityManagementBody,
                            style: TextStyle(fontSize: FontSizeManager.s12),
                          ),
                        ),
                      ],
                    ).frosted(
                      blur: 1.5,
                      frostColor: ColorManager.white,
                      alignment: Alignment.center,
                      borderRadius: BorderRadius.circular(10),
                      frostOpacity: 0.01,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 400,
                    width: 300,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        'https://i2.wp.com/upcogm.org/wp-content/uploads/2018/03/Usher-Ministry.jpg?fit=752%2C384&ssl=1',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  height: 200,
                  width: 300,
                  bottom: 20,
                  right: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10, left: 20),
                          child: Text(
                            StringManager.ushering,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: FontSizeManager.s15),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            StringManager.usheringBody,
                            style: TextStyle(fontSize: FontSizeManager.s12),
                          ),
                        ),
                      ],
                    ).frosted(
                      blur: 1.5,
                      frostColor: ColorManager.white,
                      alignment: Alignment.center,
                      borderRadius: BorderRadius.circular(10),
                      frostOpacity: 0.01,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 400,
                    width: 300,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1532939163844-547f958e91b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGJ1c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  height: 200,
                  width: 300,
                  bottom: 20,
                  right: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10, left: 20),
                          child: Text(
                            StringManager.mobility,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: FontSizeManager.s15),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            StringManager.mobilityBody,
                            style: TextStyle(fontSize: FontSizeManager.s12),
                          ),
                        ),
                      ],
                    ).frosted(
                      blur: 1.5,
                      frostColor: ColorManager.white,
                      alignment: Alignment.center,
                      borderRadius: BorderRadius.circular(10),
                      frostOpacity: 0.01,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 400,
                    width: 300,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1543702474-2c562b1845eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHByYXllcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  height: 200,
                  width: 300,
                  bottom: 20,
                  right: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10, left: 20),
                          child: Text(
                            StringManager.prayer,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: FontSizeManager.s15),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            StringManager.prayerBody,
                            style: TextStyle(fontSize: FontSizeManager.s12),
                          ),
                        ),
                      ],
                    ).frosted(
                      blur: 1.5,
                      frostColor: ColorManager.white,
                      alignment: Alignment.center,
                      borderRadius: BorderRadius.circular(10),
                      frostOpacity: 0.01,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 400,
                    width: 300,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1651514644627-8a06b0559587?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGRpc2NpcGxlc2hpcHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  height: 200,
                  width: 300,
                  bottom: 20,
                  right: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10, left: 20),
                          child: Text(
                            StringManager.discipleship,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: FontSizeManager.s15),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            StringManager.discipleshipBody,
                            style: TextStyle(fontSize: FontSizeManager.s12),
                          ),
                        ),
                      ],
                    ).frosted(
                      blur: 1.5,
                      frostColor: ColorManager.white,
                      alignment: Alignment.center,
                      borderRadius: BorderRadius.circular(10),
                      frostOpacity: 0.01,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 400,
                    width: 300,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1628348068343-c6a848d2b6dd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZmluYW5jZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  height: 200,
                  width: 300,
                  bottom: 20,
                  right: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10, left: 20),
                          child: Text(
                            StringManager.finance,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: FontSizeManager.s15),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            StringManager.financeBody,
                            style: TextStyle(fontSize: FontSizeManager.s12),
                          ),
                        ),
                      ],
                    ).frosted(
                      blur: 1.5,
                      frostColor: ColorManager.white,
                      alignment: Alignment.center,
                      borderRadius: BorderRadius.circular(10),
                      frostOpacity: 0.01,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 400,
                    width: 300,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1513128034602-7814ccaddd4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fHBlcnNvbmFsJTIwYXNzaXN0YW50fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  height: 200,
                  width: 300,
                  bottom: 20,
                  right: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10, left: 20),
                          child: Text(
                            'General Secretary',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: FontSizeManager.s15),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            'Takes minutes during all executive meetings. Performs oheer task assigned by the  executive committee.',
                            style: TextStyle(fontSize: FontSizeManager.s12),
                          ),
                        ),
                      ],
                    ).frosted(
                      blur: 1.5,
                      frostColor: ColorManager.white,
                      alignment: Alignment.center,
                      borderRadius: BorderRadius.circular(10),
                      frostOpacity: 0.01,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
