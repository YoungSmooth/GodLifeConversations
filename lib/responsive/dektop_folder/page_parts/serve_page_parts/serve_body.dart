import 'package:flutter/material.dart';
import 'package:blur/blur.dart';

class ServeBody extends StatelessWidget {
  const ServeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 400,
                    width: 300,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        'https://allnbc.com/wp-content/uploads/2020/11/all-nations-137.jpg',
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10, left: 20),
                            child: Text(
                              'Media Department',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              'Join the media department and make an impact through media for the ministry. Join the media department and make an impact through media for the ministry.',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ).frosted(
                          blur: 1.5,
                          frostColor: Colors.white,
                          alignment: Alignment.center,
                          borderRadius: BorderRadius.circular(10),
                          frostOpacity: 0.01),
                    ))
              ],
            ),
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 400,
                    width: 300,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        'https://allnbc.com/wp-content/uploads/2020/11/all-nations-137.jpg',
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10, left: 20),
                            child: Text(
                              'Media Department',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              'Join the media department and make an impact through media for the ministry. Join the media department and make an impact through media for the ministry.',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ).frosted(
                          blur: 1.5,
                          frostColor: Colors.white,
                          alignment: Alignment.center,
                          borderRadius: BorderRadius.circular(10),
                          frostOpacity: 0.01),
                    ))
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 400,
                    width: 300,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        'https://allnbc.com/wp-content/uploads/2020/11/all-nations-137.jpg',
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10, left: 20),
                            child: Text(
                              'Media Department',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              'Join the media department and make an impact through media for the ministry. Join the media department and make an impact through media for the ministry.',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ).frosted(
                          blur: 1.5,
                          frostColor: Colors.white,
                          alignment: Alignment.center,
                          borderRadius: BorderRadius.circular(10),
                          frostOpacity: 0.01),
                    ))
              ],
            ),
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 400,
                    width: 300,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        'https://allnbc.com/wp-content/uploads/2020/11/all-nations-137.jpg',
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10, left: 20),
                            child: Text(
                              'Media Department',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              'Join the media department and make an impact through media for the ministry. Join the media department and make an impact through media for the ministry.',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ).frosted(
                          blur: 1.5,
                          frostColor: Colors.white,
                          alignment: Alignment.center,
                          borderRadius: BorderRadius.circular(10),
                          frostOpacity: 0.01),
                    ))
              ],
            ),
          ],
        ),
      ],
    );
  }
}
