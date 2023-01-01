import 'package:flutter/material.dart';

class MessageStyle extends StatelessWidget {
  // final String image;
  final String messageTitle;
  final String messageOwner;
  final Image messageImage;
  const MessageStyle({
    Key? key,
    // required this.image,
    required this.messageTitle,
    required this.messageOwner,
    required this.messageImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Stack(
            children: [
              SizedBox(
                height: 200,
                width: 330,
                child: ClipRRect(borderRadius: BorderRadius.circular(20), child: messageImage),
              ),
              Positioned(
                top: 0,
                right: 14,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15), topRight: Radius.circular(15)),
                  ),
                  height: 40,
                  width: 40,
                  child: const Icon(Icons.download_for_offline_outlined, color: Colors.white),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), border: Border.all(width: 0.6, color: Colors.black54), color: Colors.grey.shade300),
                    height: 50,
                    width: 330,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 3),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 3, left: 10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 3),
                                      child: SizedBox(height: 12, width: 12, child: Image.asset('lib/assets/playing.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(messageTitle, style: const TextStyle(color: Colors.black)),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3, left: 10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 1),
                                      child: SizedBox(height: 13, width: 13, child: Image.asset('lib/assets/artistname.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(messageOwner, style: const TextStyle(color: Colors.grey, fontSize: 12)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(height: 25, width: 25, child: Image.asset('lib/assets/left.png')),
                              Padding(
                                padding: const EdgeInsets.only(left: 70),
                                child: SizedBox(height: 25, width: 25, child: Image.asset('lib/assets/right.png')),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 55,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 7, color: Colors.white),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: SizedBox(height: 35, width: 35, child: Image.asset('lib/assets/play2.png')),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        )
      ],
    );
  }
}
