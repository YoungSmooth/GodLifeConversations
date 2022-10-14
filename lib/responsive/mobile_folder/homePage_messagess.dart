import 'package:flutter/material.dart';

class HomePageMessages extends StatefulWidget {
  const HomePageMessages({super.key});

  @override
  State<HomePageMessages> createState() => _HomePageMessagesState();
}

class _HomePageMessagesState extends State<HomePageMessages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: 330,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1555421689-3f034debb7a6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTF8fHBlcnNvbmFsJTIwYXNzaXN0YW50fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 10,
                    right: 14,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      height: 40,
                      width: 40,
                      child: Icon(
                        Icons.download_for_offline_outlined,
                        color: Colors.white,
                      ),
                    )),
                Positioned(
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 1, color: Colors.white),
                          color: Colors.black),
                      height: 50,
                      width: 330,
                      child: Row(
                        children: [Text('Check')],
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
