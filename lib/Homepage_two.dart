
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/widgets/Appdecoration.dart';

import 'data/app_text.dart';
import 'data/app_text_style.dart';

class hometw extends StatelessWidget {
  const hometw({super.key});

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
              // Header row (Today - July, 21)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today",
                    style: AppTextstyle.textStyle20whiteW600,
                  ),
                  Text(
                    "July, 21",
                    style: AppTextstyle.textStyle20whiteW600,
                  ),
                ],
              ),

              const SizedBox(height: 20),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("19°C", style: AppTextstyle.textStyle20whiteW600),
                      const SizedBox(height: 8),
                     // Image.asset("assets/icons/sun_rain.png", height: 40),
                      Image.asset("assets/images/clds_sm.png", height: 40),
                      const SizedBox(height: 8),
                      Text("15.00", style: AppTextstyle.textStyle20whiteW600),
                    ],
                  ),

                  Column(
                    children: [
                      Text("18°C", style: AppTextstyle.textStyle20whiteW600),
                      const SizedBox(height: 8),
                      Image.asset("assets/images/rain_sm.png", height: 40),
                      const SizedBox(height: 8),
                      Text("16.00", style: AppTextstyle.textStyle20whiteW600),
                    ],
                  ),

                  Column(
                    children: [
                      Text("18°C", style: AppTextstyle.textStyle20whiteW600),
                      const SizedBox(height: 8),
                      Image.asset("assets/images/rain_sm.png", height: 40),
                      const SizedBox(height: 8),
                      Text("17.00", style: AppTextstyle.textStyle20whiteW600),
                    ],
                  ),

                  Column(
                    children: [
                      Text("18°C", style: AppTextstyle.textStyle20whiteW600),
                      const SizedBox(height: 8),
                      Image.asset("assets/images/rain_sm.png", height: 40),
                      const SizedBox(height: 8),
                      Text("18.00", style: AppTextstyle.textStyle20whiteW600),
                    ],
                  ),
                ],
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