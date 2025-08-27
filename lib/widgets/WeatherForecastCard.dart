import 'package:flutter/material.dart';
import '../data/app_text_style.dart';
import 'AppDecoration.dart';

import 'WeatherForecastItem.dart';

class WeatherForecastCard extends StatelessWidget {
  final String title;
  final String date;
  final List<WeatherForecastItem> forecast;

  const WeatherForecastCard({
    super.key,
    required this.title,
    required this.date,
    required this.forecast,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 428,
      height: 246,
      padding: const EdgeInsets.all(16),
      decoration: AppDecoration.gradientBox,
      child: Column(
        children: [
          // Header row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: AppTextstyle.textStyle20whiteW600),
              Text(date, style: AppTextstyle.textStyle20whiteW600),
            ],
          ),

          const SizedBox(height: 20),

          // Forecast row (auto generated)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: forecast.map((item) {
              return Column(
                children: [
                  Text(item.temperature,
                      style: AppTextstyle.textStyle20whiteW600),
                  const SizedBox(height: 8),
                  Image.asset(item.iconPath, height: 40),
                  const SizedBox(height: 8),
                  Text(item.time, style: AppTextstyle.textStyle20whiteW600),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
