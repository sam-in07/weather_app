
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
         width: 428,
         height:  428,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/clouds.png'),
            fit: BoxFit.cover,
          ),
        ),

      ),
    );
  }

}