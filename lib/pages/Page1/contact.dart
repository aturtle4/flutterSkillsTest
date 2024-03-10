import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class contactAirport extends StatefulWidget {
  const contactAirport({super.key});

  @override
  State<contactAirport> createState() => _contactAirportState();
}

class _contactAirportState extends State<contactAirport> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 265,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.black12, // Border color
          width: 1, // Border width
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Contact Airport',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          InkWell(
            onTap: () {
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Text(
                        'Police',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.phone),
                  onPressed: () {
                    // Add your onPressed logic here
                  },
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.black12,
          ), // Light line separator
          InkWell(
            onTap: () {
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Text(
                        'Lost and Found',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.phone),
                  onPressed: () {
                    // Add your onPressed logic here
                  },
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.black12,
          ), // Light line separator
          InkWell(
            onTap: () {
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Text(
                        'Transport',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.phone),
                  onPressed: () {
                    // Add your onPressed logic here
                  },
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.black12,
          ), // Light line separator
          InkWell(
            onTap: () {
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Text(
                        'Head Office',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.phone),
                  onPressed: () {
                    // Add your onPressed logic here
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
