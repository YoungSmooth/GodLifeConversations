import 'package:flutter/material.dart';
import 'package:blur/blur.dart';

import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ServeBody extends StatelessWidget {
  const ServeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
              'Explore our departments and choose what best fits you in the body of Christ.'),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10, left: 20),
                            child: Text(
                              'Administration',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              'Assign roles. Coordinate tasks. Ensures organisation. Coordinates volunteers. Oversee all departments and report to the Pastor. Follow up with the implementation of innovations. Keep detailed records of activities.',
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10, left: 20),
                            child: Text(
                              'Media',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              'Handle audio and video recordings.',
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10, left: 20),
                            child: Text(
                              'Music',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              'Houses Worship team (trains vocalists), Instrumentals and Technical.',
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10, left: 20),
                            child: Text(
                              'Facility Management',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              'Responsible for hall setup and maintenance of equipments.',
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10, left: 20),
                            child: Text(
                              'Ushering',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              'Welcome worshipers. Ensures decorum and organization during service. Takes attendance of each service. Arranges and cleans hall before and after service.',
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10, left: 20),
                            child: Text(
                              'Mobility',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              'Make arrangements for bus service. Take attendance on the bus. Ensures all attendees return safely.',
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10, left: 20),
                            child: Text(
                              'Prayer',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              'Responsible for Handling prayer meetings.',
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10, left: 20),
                            child: Text(
                              'Discipleship',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              'Responsible for follow-up of community members. Welcome first timers.',
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10, left: 20),
                            child: Text(
                              'Finance',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              'Keep detailed records of all finances both income and expenditures. Approves all necesarry expenditures. In charge of funds raising for projects.',
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10, left: 20),
                            child: Text(
                              'General Secretary',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              'Takes minutes during all executive meetings. Performs oheer task assigned by the  executive committee.',
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
