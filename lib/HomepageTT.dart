

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
              Row(
                children: [
                  const SizedBox(width: 50), // left gap
                  Text(
                    AppText.seven,
                    style: AppTextstyle.textStyle24whiteW700,
                  ),
                  const Spacer(),
                  const SizedBox(width: 118), // right gap
                ],
              ),

              SizedBox(height: 14,) ,
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
                child: PageView.builder(
                  controller: PageController(viewportFraction: 0.25), // এক স্ক্রিনে 4টা
                  itemCount: 7, // 7 days
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Container(
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color(0xFF3D2C8E).withOpacity(0.9),
                              const Color(0xFF9D52AC).withOpacity(0.9),
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${18 + (index % 3)}°C", // temp
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Icon(Icons.cloud, size: 32, color: Colors.white),
                            const SizedBox(height: 8),
                            Text(
                              ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"][index],
                              style: const TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )





            ],
          ),
        )
    );
  }
}        

