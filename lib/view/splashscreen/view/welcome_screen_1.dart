import 'dart:async';
import 'package:fitness_pro/res/constants/colors.dart';
import 'package:fitness_pro/view/signup/view/signup_screen_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen1 extends StatefulWidget {
  const WelcomeScreen1({super.key});

  @override
  _SplashScreen6State createState() => _SplashScreen6State();
}

class _SplashScreen6State extends State<WelcomeScreen1> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Get.to(() => SignupScreen2()); // Replace NextScreen with the actual screen you want to navigate to
    });
  }

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
                const Text(
                  'Welcome to',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500, color: AppColor.black),
                ),
                SizedBox(width: Get.width * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Fitness',
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700, color: AppColor.black),
                    ),
                    SizedBox(width: Get.width * 0.02),
                    const Text(
                      'Pro',
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700, color: AppColor.white),
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.02), // Adjusted height
                const Text(
                  'Everybody can train',
                  style: TextStyle(fontSize: 25, color: AppColor.white),
                ),
                SizedBox(height: Get.height * 0.05), // Space between text and progress indicator
                const CircularProgressIndicator(
                  color: AppColor.white
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
