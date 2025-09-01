import 'package:flutter/material.dart';
import 'package:weather_app/HomepageTT.dart';
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

      debugShowCheckedModeBanner: false,
    home: const Homepage(),
     // home:  hometw(),

    //  home:  homett(),
    );
  }

}


