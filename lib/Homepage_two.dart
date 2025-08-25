
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class hometw extends StatelessWidget {
  const hometw({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   // throw UnimplementedError();
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              width: 244,
              height: 244,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/clds.png'),
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}