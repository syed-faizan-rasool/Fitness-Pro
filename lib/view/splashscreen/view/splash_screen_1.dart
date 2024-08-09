import 'package:fitness_pro/res/constants/colors.dart';
import 'package:fitness_pro/view/splashscreen/view/splash_screen_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.maincolor,  // Set the background color here
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Fitness',
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700 ,color: AppColor.black),
                    ),
                    SizedBox(width:  Get.width*0.02),
                      Text(
                      'Pro',
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700 ,color: AppColor.white),
                    ),
                  ],
                ),
                    SizedBox(height:  Get.height*0.001),
                     Text(
                      'Everybody can train',
                      style: TextStyle(fontSize: 25,color: AppColor.white),
                    ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30.0), // Adjust padding as needed
                child: Container(
                  width: 290,  // Set the width of the button
                  height: 60,  // Set the height of the button
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => const SplashScreen2());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.white, // Set the button color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), // Adjust border radius if needed
                      ),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(fontSize: 18,color: AppColor.maincolor),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
