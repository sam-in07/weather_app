

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
                height: 172, // container height
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7, // সাত দিনের জন্য
                  separatorBuilder: (_, __) => const SizedBox(width: 12), // gap between boxes
                  itemBuilder: (context, index) {
                    return Container(
                      width: 82,
                      height: 172,
                      decoration: ShapeDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment(0.50, -0.00),
                          end: Alignment(0.50, 1.00),
                          colors: [Color(0xFF3D2C8E), Color(0xFF9D52AC)],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Day ${index + 1}",
                          style: const TextStyle(color: Colors.white),
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

