import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class publicTransport extends StatefulWidget {
  const publicTransport({super.key});

  @override
  State<publicTransport> createState() => _publicTransportState();
}

class _publicTransportState extends State<publicTransport> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 165,
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
              'Public Transport',
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
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      const Icon(Icons.subway),
                      const SizedBox(width: 10),
                      const Text(
                        'Metro',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(135, 0),
                        child: const Text(
                          '6 am - 10 pm',
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward),
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
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      const Icon(Icons.directions_bus),
                      const SizedBox(width: 10),
                      const Text(
                        'Bus',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(135, 0),
                        child: const Text(
                          'available 24hrs',
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward),
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
