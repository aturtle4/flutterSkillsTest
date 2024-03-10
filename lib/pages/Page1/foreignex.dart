
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class foreignEx extends StatefulWidget {
  @override
  _foreignExState createState() => _foreignExState();
}

class _foreignExState extends State<foreignEx> {
  int _expandedIndex = -1;
  double _intialHeight = 285;

  void _toggleExpand(int index) {
    setState(() {
      if (_expandedIndex == index) {
        _expandedIndex = -1; // Collapse the row if it's already expanded
      } else {
        _expandedIndex = index; // Expand the clicked row
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Container (
      width: 335,
      height: _intialHeight,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.black12, // Border color
          width: 1, // Border width
        ),
      ),
      child :Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Transform.translate(
              offset: const Offset(-70, 0),
              child: const Text(
                'Foreign exchange',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            _buildExpandableRow(1, 'Travelex', _expandedIndex == 1,'Terminal 3-Airside Dept Downtown, Concourse B,Terminal 3, beside Winston Smoking room'),
            _buildExpandableRow(2, 'Al Ansari Exchange', _expandedIndex == 2,'Terminal 3-Airside Dept Downtown, Concourse B,Terminal 3, beside Winston Smoking room'),
            _buildExpandableRow(3, 'Emirates NBD', _expandedIndex == 3,'Terminal 3-Airside Dept Downtown, Concourse B,Terminal 3, beside Winston Smoking room'),
          ],
        ),
      ),
    );
  }

  Widget _buildExpandableRow(int index, String data, bool isExpanded,String xtraData) {
    return  Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                data,
                style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),
              ),
            ),
            IconButton(
              icon: Icon(
                isExpanded ? Icons.keyboard_arrow_up : Icons
                    .keyboard_arrow_down,
              ),
              onPressed: () {

                _toggleExpand(index);
                setState(() {
                  if ( _intialHeight == 285){
                    _intialHeight = 320;
                  }else{
                    _intialHeight = 285;
                  }
                });
              },
            ),
          ],
        ),
        if (isExpanded) ...[
          SizedBox(height: 8.0),
          // Additional data to show when the row is expanded

          Text(
            xtraData,
            style: TextStyle(fontSize: 11.0),
          ),
        ],
        Divider(), // Divider between rows
      ],
    );
  }
}


