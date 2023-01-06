import 'package:flutter/material.dart';

import '../../../../resources/color_manager.dart';
import '../../../../resources/font_size_manager.dart';
import '../../../../resources/string_manager.dart';

class DesktopMessagesBody extends StatefulWidget {
  const DesktopMessagesBody({super.key});

  @override
  State<DesktopMessagesBody> createState() => _DesktopMessagesBodyState();
}

class _DesktopMessagesBodyState extends State<DesktopMessagesBody> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      width: double.infinity,
      child: Row(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 30),
                  child: Container(
                    height: 160,
                    width: 250,
                    decoration: BoxDecoration(
                      color: ColorManager.greyS500,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                              child: Image.asset('lib/assets/wb1.jpg', fit: BoxFit.cover, height: 80, width: double.infinity),
                            ),
                          ],
                        ),
                        const Positioned(
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                StringManager.messagesBody2,
                                style: TextStyle(color: ColorManager.white, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 30),
                  child: Container(
                    height: 160,
                    width: 250,
                    decoration: BoxDecoration(
                      color: ColorManager.greyS500,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                              child: Image.asset('lib/assets/wb5.jpg', fit: BoxFit.cover, height: 80, width: double.infinity),
                            ),
                          ],
                        ),
                        const Positioned(
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(StringManager.messagesBody2,
                                  style: TextStyle(color: ColorManager.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 30),
                  child: Container(
                    height: 160,
                    width: 250,
                    decoration: BoxDecoration(
                      color: ColorManager.greyS500,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                              child: Image.asset('lib/assets/wb4.jpg', fit: BoxFit.cover, height: 80, width: double.infinity),
                            ),
                          ],
                        ),
                        const Positioned(
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                StringManager.messagesBody2,
                                style: TextStyle(color: ColorManager.white, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 30, bottom: 30),
                  child: Container(
                    height: 160,
                    width: 250,
                    decoration: BoxDecoration(
                      color: ColorManager.greyS500,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                              child: Image.asset('lib/assets/wb2.jpg', fit: BoxFit.cover, height: 80, width: double.infinity),
                            ),
                          ],
                        ),
                        const Positioned(
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                StringManager.messagesBody2,
                                style: TextStyle(color: ColorManager.white, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
                    child: Container(
                      height: 550,
                      width: double.infinity,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: ColorManager.greyS100),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: ColorManager.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          ),
                                          child: Image.network(
                                            'https://images.unsplash.com/photo-1452457807411-4979b707c5be?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTUwfHxsb3ZlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
                                            fit: BoxFit.cover,
                                            width: double.infinity,
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(StringManager.messagesBody6),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 30,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: ColorManager.white,
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(width: 2, color: ColorManager.greyS500),
                                    ),
                                    child: Row(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 2, top: 2, bottom: 2, right: 7),
                                          child: CircleAvatar(
                                            backgroundImage: NetworkImage(
                                                'https://images.unsplash.com/photo-1661961110218-35af7210f803?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60'),
                                            radius: 20,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: const [
                                            Padding(
                                              padding: EdgeInsets.only(top: 5, bottom: 5, right: 10),
                                              child: Text(
                                                StringManager.messagesBody3,
                                                style: TextStyle(color: ColorManager.black),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(bottom: 5),
                                              child: Text(
                                                StringManager.messagesBody2,
                                                style: TextStyle(fontSize: FontSizeManager.s10, color: ColorManager.grey),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: ColorManager.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          ),
                                          child: Image.network(
                                            'https://images.unsplash.com/photo-1663488631285-ee6eaaa9aef5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60',
                                            fit: BoxFit.cover,
                                            width: double.infinity,
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(StringManager.messagesBody4),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 30,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: ColorManager.white,
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(width: 2, color: ColorManager.greyS500),
                                    ),
                                    child: Row(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 2, top: 2, bottom: 2, right: 7),
                                          child: CircleAvatar(
                                            backgroundImage: NetworkImage(
                                                'https://images.unsplash.com/photo-1661961110218-35af7210f803?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60'),
                                            radius: 20,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: const [
                                            Padding(
                                              padding: EdgeInsets.only(top: 5, bottom: 5, right: 10),
                                              child: Text(
                                                StringManager.messagesBody3,
                                                style: TextStyle(color: ColorManager.black),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(bottom: 5),
                                              child: Text(
                                                StringManager.messagesBody2,
                                                style: TextStyle(fontSize: FontSizeManager.s10, color: ColorManager.grey),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: ColorManager.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          ),
                                          child: Image.network(
                                            'https://images.unsplash.com/photo-1663422075534-15a8f3951a2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4MXx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',
                                            fit: BoxFit.cover,
                                            width: double.infinity,
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(StringManager.messagesBody5),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 30,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: ColorManager.white,
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(width: 2, color: ColorManager.greyS500),
                                    ),
                                    child: Row(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 2, top: 2, bottom: 2, right: 7),
                                          child: CircleAvatar(
                                            backgroundImage: NetworkImage(
                                                'https://images.unsplash.com/photo-1661961110218-35af7210f803?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60'),
                                            radius: 20,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: const [
                                            Padding(
                                              padding: EdgeInsets.only(top: 5, bottom: 5, right: 10),
                                              child: Text(
                                                StringManager.messagesBody3,
                                                style: TextStyle(color: ColorManager.black),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(bottom: 5),
                                              child: Text(
                                                StringManager.messagesBody2,
                                                style: TextStyle(fontSize: FontSizeManager.s10, color: ColorManager.grey),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: ColorManager.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          ),
                                          child: Image.network(
                                            'https://images.unsplash.com/photo-1661956601031-4cf09efadfce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwzOXx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',
                                            fit: BoxFit.cover,
                                            width: double.infinity,
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(''),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 30,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: ColorManager.white,
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(width: 2, color: ColorManager.greyS500),
                                    ),
                                    child: Row(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 2, top: 2, bottom: 2, right: 7),
                                          child: CircleAvatar(
                                            backgroundImage: NetworkImage(
                                                'https://images.unsplash.com/photo-1661961110218-35af7210f803?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60'),
                                            radius: 20,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: const [
                                            Padding(
                                              padding: EdgeInsets.only(top: 5, bottom: 5, right: 10),
                                              child: Text(
                                                StringManager.messagesBody3,
                                                style: TextStyle(color: ColorManager.black),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(bottom: 5),
                                              child: Text(
                                                StringManager.messagesBody2,
                                                style: TextStyle(fontSize: FontSizeManager.s10, color: ColorManager.grey),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: ColorManager.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          ),
                                          child: Image.network(
                                            'https://images.unsplash.com/photo-1663429122432-c2769373768f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyOXx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',
                                            fit: BoxFit.cover,
                                            width: double.infinity,
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(StringManager.hallelujah),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 30,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: ColorManager.white,
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(width: 2, color: ColorManager.greyS500),
                                    ),
                                    child: Row(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 2, top: 2, bottom: 2, right: 7),
                                          child: CircleAvatar(
                                            backgroundImage: NetworkImage(
                                                'https://images.unsplash.com/photo-1661961110218-35af7210f803?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60'),
                                            radius: 20,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: const [
                                            Padding(
                                              padding: EdgeInsets.only(top: 5, bottom: 5, right: 10),
                                              child: Text(
                                                StringManager.messagesBody3,
                                                style: TextStyle(color: ColorManager.black),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(bottom: 5),
                                              child: Text(
                                                StringManager.defaultDate2,
                                                style: TextStyle(fontSize: FontSizeManager.s10, color: ColorManager.grey),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
