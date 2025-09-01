
import 'package:flutter/material.dart';
import 'package:weather_app/data/app_text.dart';
import 'package:weather_app/widgets/primary_button.dart';

import 'HomepageTT.dart';
import 'data/app_text_style.dart';

class Homepage extends StatelessWidget {
  const Homepage({ super.key });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          //  borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff3d2c8e), Color(0xff533595), Color(0xff9d52ac)],
          ),
        ),
        child: Center(
          child: Column(
            children: [

              Container(
                 width: 428,
                 height:  428,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/clouds.png'),
                    fit: BoxFit.cover,
                  ),
                ),

              ),
              SizedBox(
                height: 51
                ,
              ),

              Text(
                AppText.weat,
                style: AppTextstyle.textStyle64whiteW700,
                textAlign: TextAlign.center,
              ),

              Text(
                AppText.nextT,
                style: AppTextstyle.textStyle64yellowW700,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 53,),
              PrimaryButton(
                title: "Get Start",
                height: 72,
                width: 304,
                radius: 50,
                color: Color(0xFFDDB130),

                textStyle: TextStyle(
                  color: Color(0xFF362A84),
                  fontSize: 28,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w700,
                  height: 1.06,
                  letterSpacing: 0.47,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => homett()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

}