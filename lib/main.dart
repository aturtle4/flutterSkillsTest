import 'package:flutter/material.dart';
import 'package:havahavai/pages/Page1/home.dart';
import 'package:havahavai/pages/Page2/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: page1()
      // didn't do because i believe it is just half a page
      //home:page2()
    );
  }
}
