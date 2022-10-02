// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../pages/desktop_home_page.dart';

class ServePageHeader extends StatelessWidget {
  const ServePageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          height: 350,
          width: double.infinity,
          child: Image.network(
            'https://images.unsplash.com/photo-1521791136064-7986c2920216?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTF8fGhlbHAlMjBwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
        Positioned(
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const DesktopScaffold(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Container(
                height: 60,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: Image.asset('lib/assets/logowhite.png'),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Padding(
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
                          'S E R V E',
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
      ],
    );
  }
}
