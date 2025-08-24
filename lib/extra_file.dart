// import 'package:flutter/material.dart';
// import 'package:shpoy_app/data/app_text.dart';
// import 'package:shpoy_app/data/app_text_style.dart';
// import 'package:shpoy_app/data/image_path.dart';
//
// import '../widgets/primary_button.dart';
//
// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final deviceHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       // backgroundColor: Colors.black,
//       body: Center(
//         child: Column(
//           children: [
//             SizedBox(
//               height: deviceHeight* 0.3,
//             ),
//             Container(
//                 height: 134,
//                 width: 134,
//                 decoration:
//                 BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Colors.white,
//                   border:
//                   Border.all(
//                     color: Color(0x0ff00000).withOpacity(0.16),
//                     width: 1,
//                   ),
//                 ),
//                 //box decoration ar baire hoi child nibo
//                 child: Center(
//                   child: Image.asset(ImagePath.appbags),
//                 )
//
//             ),
//             SizedBox(
//               height: 24,
//
//             ),
//             Text(AppText.appname,   style: AppTextstyle.textStyle52WhiteW700, ),
//             SizedBox(height: 18,),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 50.0),
//               child: Text("Beautiful eCommerce UI Kit for your online store",   style: AppTextstyle.textStyle19WhiteW300,
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             SizedBox(height: 100,),
//             PrimaryButton(
//               title: "Get Started", onTap: () {  },
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Center(
//                   child: Row(
//                     children: [
//                       Text("I already have an acoount", style: AppTextstyle.textStyle12WhiteW500,),
//                       SizedBox(width: 20,),
//                       Container(
//                         height: 30,
//                         width: 30,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: Color(0xFF004CFF),
//                         ),
//                         child: Icon(Icons.arrow_forward_sharp , color: Colors.white,),
//                       )
//
//                     ],
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }