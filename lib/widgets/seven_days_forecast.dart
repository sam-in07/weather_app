import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SevenDaysForecast extends StatefulWidget {
  const SevenDaysForecast({super.key});

  @override
  State<SevenDaysForecast> createState() => _SevenDaysForecastState();
}

class _SevenDaysForecastState extends State<SevenDaysForecast> {
  final PageController _pageController = PageController(viewportFraction: 0.25);
  int currentPage = 0;

  final List<Map<String, dynamic>> forecast = [
    {
      "day": "Mon",
      "temp": "19°C",
      "icon": "images/rain_sm.png",
      "c1": 0xff3d2c8e,
      "c2": 0xff533595,
      "c3": 0xff9d52ac,
    },
    {
      "day": "Tue",
      "temp": "18°C",
      "icon": "images/clds_sm.png",
      "c1": 0xff3d2c8e,
      "c2": 0xff8d78c7,
    },
    {
      "day": "Wed",
      "temp": "18°C",
      "icon": "images/rain_sm.png",
      "c1": 0xff3d2c8e,
      "c2": 0xff8d78c7,
    },
    {
      "day": "Thu",
      "temp": "19°C",
      "icon": "images/clds_sm.png",
      "c1": 0xff3d2c8e,
      "c2": 0xff8d78c7,
    },
    {
      "day": "Fri",
      "temp": "20°C",
      "icon": "images/rain_sm.png",
      "c1": 0xff3d2c8e,
      "c2": 0xff8d78c7,
    },
    {
      "day": "Sat",
      "temp": "21°C",
      "icon": "images/clds_sm.png",
      "c1": 0xff3d2c8e,
      "c2": 0xff8d78c7,
    },
    {
      "day": "Sun",
      "temp": "19°C",
      "icon": "images/rain_sm.png",
      "c1": 0xff3d2c8e,
      "c2": 0xff8d78c7,
    },
  ];

  void _goForward() {
    if (currentPage < forecast.length - 1) {
      currentPage++;
      _pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _goBackward() {
    if (currentPage > 0) {
      currentPage--;
      _pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: _goBackward,
        ),

        // 🌤 Forecast Cards
        Expanded(
          child: SizedBox(
            height: 180,
            child: PageView.builder(
              controller: _pageController,
              itemCount: forecast.length,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                final item = forecast[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: bottle(
                    item["c1"],
                    item["c2"],
                    item["c3"],
                    item["icon"],
                    item["day"],
                    item["temp"],
                  ),
                );
              },
            ),
          ),
        ),

        // ➡️ Right Arrow
        IconButton(
          icon: const Icon(Icons.arrow_forward_ios, color: Colors.white),
          onPressed: _goForward,
        ),
      ],
    );
  }
}

Widget bottle(int? clr1, int? clr2, int? clr3, String img, String txt, String tx) {
  final List<Color> gradientColors = [];

  if (clr1 != null) gradientColors.add(Color(clr1));
  if (clr2 != null) gradientColors.add(Color(clr2));
  if (clr3 != null) gradientColors.add(Color(clr3));

  return Container(
    width: 82,
    height: 172,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: gradientColors,
      ),
    ),
    child: Column(
      children: [
        const SizedBox(height: 26),
        Text(
          tx,
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: const Color(0xffffffff),
          ),
        ),
        Image.asset(img, width: 66, height: 66),
        Text(
          txt,
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: const Color(0xffffffff),
          ),
        ),
      ],
    ),
  );
}
