import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class selfParking extends StatefulWidget {
  const selfParking({super.key});

  @override
  State<selfParking> createState() => _selfParkingState();
}

class _selfParkingState extends State<selfParking> {
  Color _t1Color = Colors.black;
  Color _t1TextColor = Colors.white;
  Color _t2Color = Colors.white;
  Color _t2TextColor = Colors.black;

  void _handleSPB1(){
    setState(() {
      _t1Color = Colors.black;
      _t1TextColor = Colors.white;
      _t2Color = Colors.white;
      _t2TextColor = Colors.black;
    });
  }
  void _handleSPB2(){
    setState(() {
      _t1Color = Colors.white;
      _t1TextColor = Colors.black;
      _t2Color = Colors.black;
      _t2TextColor = Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 335,
      height: 234,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.black12, // Border color
          width: 1, // Border width
        ),
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: const Offset(-90, 0),
            child: const Text(
              'Self Parking',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width : 20),
              ElevatedButton(
                onPressed: () {
                  _handleSPB1();
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: _t1TextColor,
                  backgroundColor: _t1Color,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'T1',
                  style: TextStyle(fontSize: 11),
                ),
              ),
              const SizedBox(width : 15),
              ElevatedButton(
                onPressed: () {
                  _handleSPB2();
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: _t2TextColor,
                  backgroundColor: _t2Color,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'T2',
                  style: TextStyle(fontSize: 11),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.two_wheeler),
              ),
              const Text('Two Wheeler'),
              Transform.translate(offset: const Offset(90,0),child: const Text('AED 50/ day'),),
              const Expanded(child: SizedBox()),
              IconButton(
                icon: const Icon(Icons.info),
                onPressed: () {
                  // Show info for Two Wheeler
                },
              ),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.directions_car),
              ),
              const Text('Car Parking'),
              Transform.translate(offset: const Offset(90,0),child: const Text('AED 100/ day'),),
              const Expanded(child: SizedBox()),
              IconButton(
                icon: const Icon(Icons.info),
                onPressed: () {
                  // Show info for Car Parking
                },
              ),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.ev_station),
              ),
              const Text('Electric Car Parking'),
              Transform.translate(offset: const Offset(40,0),child: const Text('AED 100/ day'),),
              const Expanded(child: SizedBox()),
              IconButton(
                icon: const Icon(Icons.info),
                onPressed: () {
                  // Show info for Electric Car Parking
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
