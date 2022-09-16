import 'package:flutter/material.dart';
import 'package:god_life_conversations/responsive/dektop_folder/pages/desktop_connect_page.dart';

class HeaderBackground extends StatelessWidget {
  const HeaderBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          height: 700,
          width: double.infinity,
          child:
              //
              Image.asset(
            'lib/assets/wb1.jpg',
            fit: BoxFit.cover,
          ),

          //     Image.network(
          //   'https://images.unsplash.com/photo-1549138144-42ff3cdd2bf8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1452&q=80',
          //   fit: BoxFit.cover,
          // ),
        ),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Container(
              height: 60,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: Image.asset('lib/assets/logoblack.png'),
            ),
          ),
        ),
        Positioned(
          right: 13,
          top: 50,
          child: SizedBox(
            width: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const DesktopConnectPage(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 0.7, color: Colors.black),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(15, 5, 15, 8),
                      child: Center(
                        child: Text(
                          'Connect',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 0.7, color: Colors.black),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(15, 5, 15, 8),
                      child: Center(
                        child: Text(
                          'Messages',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 0.7, color: Colors.black),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(15, 5, 15, 8),
                      child: Center(
                        child: Text(
                          'Serve',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 0.7, color: Colors.black),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(15, 5, 15, 8),
                      child: Center(
                        child: Text(
                          'Events',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 0.7, color: Colors.black),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(15, 5, 15, 8),
                      child: Center(
                        child: Text(
                          'Give',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: SizedBox(
                      height: 200,
                      width: 450,
                      child: Text(
                        'WELCOME TO GODLIFE CONVERSATIONS',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 50,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const DesktopConnectPage(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        height: 50,
                        width: 210,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          border: Border.all(color: Colors.black, width: 1.2),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Center(
                          child: Text(
                            'I  A M  N E W',
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
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}