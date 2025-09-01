

import 'package:weather_app/widgets/seven_days_forecast.dart';

import 'Homepage_two.dart';
import 'data/app_text.dart';

import 'package:flutter/material.dart';

import 'data/app_text_style.dart';

class homett extends StatelessWidget {
  const homett({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          //  borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff3d2c8e), Color(0xff533595), Color(0xff9d52ac)],
          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 56),
            Center(
              child: Text(
                AppText.usa,
                style: AppTextstyle.textStyle24whiteW400,
              ),
            ),

            SizedBox(height: 52),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text(
                AppText.seven,
                style: AppTextstyle.textStyle24whiteW700,
              ),
            ),
            SizedBox(height: 20),
            SevenDaysForecast(),
            SizedBox(height: 25),
            Center(
              child: Container(
                width: 352,
                height: 174,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Color(0xff3e2d8f), Color(0xff9d52ac)],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 23, top: 20),
                          child: Container(
                            child: Image.asset('images/icon_roun.png'),
                          ),
                        ),
                        SizedBox(width: 12),
                        Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: Text(
                            "AIR QUALITY",
                            style: AppTextstyle.textStyle16whiteW400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        "3-Low Health Risk",
                        style: AppTextstyle.textStyle28whiteW600,
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Container(
                        width: 308,
                        height: 4,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xff8158C3),
                              Color(0xfff362A84)],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      spacing: 190,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'See more',
                            style: AppTextstyle.textStyle18whiteW600,
                          ),
                        ),

                        Icon(Icons.arrow_forward_ios, color: Colors.white),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 43),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => hometw()),
                      );
                    },
                    child: Container(
                      width: 161,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Color(0xff3e2d8f), Color(0x009d52ac)],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 14,
                                  horizontal: 5,
                                ),
                                child: Container(
                                  height: 36,
                                  width: 36,
                                  child: Image.asset(
                                    'images/star_.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                AppText.sun,
                                style: AppTextstyle.textStyle16whiteW400,
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Text(
                              '5:28 AM',
                              style: AppTextstyle.textStyle28whiteW600,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Text(
                              'Sunset: 7.25PM',
                              style: AppTextstyle.textStyle18whiteW600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 13),

                  // You can add more tappable cards in the same format


                Container(
                  width: 161,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Color(0xff3e2d8f), Color(0x009d52ac)],
                    ),
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 14,
                              horizontal: 5,
                            ),
                            child: Container(
                              height: 36,
                              width: 36,
                              child: Image.asset(
                                'images/star_.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            "UV INDEX",
                            style: AppTextstyle.textStyle16whiteW400,
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: Text('4',
                          style:AppTextstyle.textStyle28whiteW600,

                        ),

                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: Text('Moderate',
                            style:AppTextstyle.textStyle28whiteW600,
                      ),

                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
