

import 'data/app_text.dart';

import 'package:flutter/material.dart';

import 'data/app_text_style.dart';

class homett extends StatelessWidget {
  const homett({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(
                AppText.usa,
                style: AppTextstyle.textStyle24whiteW400,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 52,) ,
              Text(
                AppText.seven,
                style: AppTextstyle.textStyle24whiteW700,
                textAlign: TextAlign.left,
              ),
            ],
          ),
        )
    );
  }
}

