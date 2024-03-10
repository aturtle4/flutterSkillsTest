import 'package:flutter/material.dart';
import 'contact.dart';
import 'foreignex.dart';
import 'package:havahavai/pages/Page1/publictrasport.dart';
import 'package:havahavai/pages/Page1/selfpark.dart';
import 'package:havahavai/pages/Page1/taxiservice.dart';
import 'package:havahavai/pages/Page1/terminalmap.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dubai Airport - DXB',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Dubai . 🇦🇪 United Arab Emirates',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 357,
              height: 238,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/burj-khalifa-2212978_1280.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Transform.translate(
            offset: const Offset(0, -150),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: const EdgeInsets.only(top: 0),
                width: 315,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: const Offset(0, 1.2),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 5,),
                              Icon(Icons.cloudy_snowing),
                              Text(
                                '19 C',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Cloudy',
                                style: TextStyle(fontSize: 11),
                              ),
                              SizedBox(height : 14),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 5,),
                              Icon(Icons.calendar_month_sharp),
                              Text(
                                '30 Jan',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Mon',
                                style: TextStyle(fontSize: 11),
                              ),
                              SizedBox(height : 14),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 5,),
                              Icon(Icons.access_time_filled),
                              Text(
                                '8:45 PM',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'GMT+4',
                                style: TextStyle(fontSize: 11),
                              ),
                              SizedBox(height : 14),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 5,),
                              Icon(Icons.money_rounded),
                              Text(
                                'AED',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '1\$ = 3.67AED',
                                style: TextStyle(fontSize: 11),
                              ),
                              SizedBox(height : 14),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 48,
                            child: ElevatedButton(
                              onPressed: () {
                                // Handle GetDirections press
                              },
                              style: ElevatedButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                  ),
                                  side:
                                      BorderSide(color: Colors.grey, width: 1),
                                ),
                                elevation: 0,
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.directions,color: Colors.blue,),
                                  SizedBox(width: 3),
                                  Text('Get direction',style: TextStyle(color: Colors.blue),),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 48,
                            child: ElevatedButton(
                              onPressed: () {
                                // Handle Call airport press
                              },
                              style: ElevatedButton.styleFrom(

                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                  ),
                                  side:
                                      BorderSide(color: Colors.grey, width: 1),
                                ),
                                elevation: 0,
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.call,color: Colors.blue,),
                                  SizedBox(width: 3),
                                  Text('Call airport',style: TextStyle(color: Colors.blue),),
                                ],
                              ),
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
          Transform.translate(
            offset: const Offset(0, -110),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Handle button press
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        'Transport',
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Handle button press
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        'Terminal',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Handle button press
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        'Forex',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Handle button press
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        'Contact Info',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ), // row of buttons
                const SizedBox(height: 10),
                const taxiService(),
                const SizedBox(height: 10),
                const publicTransport(),
                const SizedBox(height: 10),
                const selfParking(),
               const SizedBox(height: 10),
                const terminalMap(),
                const SizedBox(height: 10),
                 foreignEx(),
                const SizedBox(height: 10),
                const contactAirport(),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        // Handle Get Direction button press
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.black,
                        fixedSize: const Size(157, 48), // Button size
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Set border radius to 10
                        ),
                      ),
                      icon: const Icon(Icons.directions),
                      label: const Text(
                        'Get Direction',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        // Handle Call Airport button press
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.black,
                        fixedSize: const Size(157, 48), // Button size
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Set border radius to 10
                        ),
                      ),
                      icon: const Icon(Icons.phone),
                      label: const Text(
                        'Call Airport',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}



