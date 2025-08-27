import 'package:flutter/material.dart';
import 'package:weather_app/Homepage_two.dart';

import 'Homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather APP',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF560B88),
        // Your desired background color
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    //home: const Homepage(),
      home:  hometw(),
    );
  }

}


