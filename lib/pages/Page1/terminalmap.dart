import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class terminalMap extends StatefulWidget {
  const terminalMap({super.key});

  @override
  State<terminalMap> createState() => _terminalMapState();
}

class _terminalMapState extends State<terminalMap> {
  bool isFullPage = false;

  Color _T1Color = Colors.black;
  Color _T1TextColor = Colors.white;
  Color _T2Color = Colors.white;
  Color _T2TextColor = Colors.black;
  Color _T3Color = Colors.white;
  Color _T3TextColor = Colors.black;

  void _handleTMB1() {
    setState(() {
      _T1Color = Colors.black;
      _T1TextColor = Colors.white;
      _T2Color = Colors.white;
      _T2TextColor = Colors.black;
      _T3Color = Colors.white;
      _T3TextColor = Colors.black;
    });
  }

  void _handleTMB2() {
    setState(() {
      _T1Color = Colors.white;
      _T1TextColor = Colors.black;
      _T2Color = Colors.black;
      _T2TextColor = Colors.white;
      _T3Color = Colors.white;
      _T3TextColor = Colors.black;
    });
  }

  void _handleTMB3() {
    setState(() {
      _T1Color = Colors.white;
      _T1TextColor = Colors.black;
      _T2Color = Colors.white;
      _T2TextColor = Colors.black;
      _T3Color = Colors.black;
      _T3TextColor = Colors.white;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 335,
      height: 214,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.black12, // Border color
          width: 1, // Border width
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10,),
          Transform.translate(
            offset: const Offset(-90, 0),
            child: const Text(
              'Terminal Map',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: _handleTMB1,
                style: ElevatedButton.styleFrom(
                  backgroundColor: _T1Color,
                  foregroundColor: _T1TextColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(40, 40),
                ),
                child: Text('T1'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: _handleTMB2,
                style: ElevatedButton.styleFrom(
                  backgroundColor: _T2Color,
                  foregroundColor: _T2TextColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(40, 40),
                ),
                child: Text('T2'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: _handleTMB3,
                style: ElevatedButton.styleFrom(
                  backgroundColor: _T3Color,
                  foregroundColor: _T3TextColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(40, 40),
                ),
                child: Text('T3'),
              ),
            ],
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              setState(() {
                isFullPage = !isFullPage;
              });
            },
            child: isFullPage
                ? Expanded(
              child: Image.asset(
                'assets/Screenshot 2024-03-10 160230.png',
                width: 300,
                height: 400,
                fit: BoxFit.cover,
              ),
            )
                : Container(
              width: 294,
              height: 57,
              child: Image.asset(
                'assets/Screenshot 2024-03-10 160230.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Transform.translate(
            offset: const Offset(0,-50),
            child: ElevatedButton(
              onPressed: (){isFullPage = !isFullPage;},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: const Size(40, 40),
              ),
              child: const Text('View'),

            ),
          )
        ],
      ),
    );
  }
}
