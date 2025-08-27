
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/widgets/Appdecoration.dart';

import 'data/app_text.dart';
import 'data/app_text_style.dart';

class hometw extends StatelessWidget {
   hometw({super.key});
  final List<Map<String, String>> forecast = [
    {"temp": "19°C", "icon": "assets/images/clds_sm.png", "time": "15.00"},
    {"temp": "18°C", "icon": "assets/images/rain_sm.png", "time": "16.00"},
    {"temp": "18°C", "icon": "assets/images/rain_sm.png", "time": "17.00"},
    {"temp": "18°C", "icon": "assets/images/rain_sm.png", "time": "18.00"},
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   // throw UnimplementedError();
    return Scaffold(
      body: Center(
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
            ),
            SizedBox(height: 4,),
            Text(
              AppText.num,
              style: AppTextstyle.textStyle64whiteW500,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 52 ,),
            Text(
              AppText.precipitation,
              style: AppTextstyle.textStyle24whiteW400,
              textAlign: TextAlign.center,
            ),
            Container(
              width: 336,
              height: 198,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/home.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
        Container(
          width: 428,
          height: 246,
          decoration: AppDecoration.gradientBox,
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Today", style: AppTextstyle.textStyle20whiteW600),
                  Text("July, 21", style: AppTextstyle.textStyle20whiteW600),
                ],
              ),

              const SizedBox(height: 20),

              // Divider line
              Container(
              //  width: double.infinity,
                width: 428 ,

                height: 0,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 2,
                      color: const Color(0xFF8D78C7),
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                  ),
                ),
              ),


              const SizedBox(height: 20),

              // Forecast row (generated automatically)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: forecast.map((item) {
                  return Column(
                    children: [
                      Text(item["temp"]!, style: AppTextstyle.textStyle20whiteW600),
                      const SizedBox(height: 8),
                      Image.asset(item["icon"]!, height: 40),
                      const SizedBox(height: 8),
                      Text(item["time"]!, style: AppTextstyle.textStyle20whiteW600),
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        ),









        ],
        ),
      ),
    );
  }

}