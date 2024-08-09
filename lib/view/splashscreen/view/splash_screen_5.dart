import 'package:fitness_pro/res/constants/colors.dart';
import 'package:fitness_pro/view/splashscreen/view/splash_screen_6.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashScreen5 extends StatelessWidget {
  const SplashScreen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: AppColor.maincolor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(250),
                      bottomRight: Radius.circular(150),
                    ),
                  ),
                ),
                Center(
                  child: Image.asset(
                    'assets/fitness app/images/fitness 4.png',
                    fit: BoxFit.contain, // Ensure the image fits within its bounds without altering the background
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                    SizedBox(height:  Get.height*0.03),

                       Text(
                      'Improve Sleep  Quality',
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: AppColor.black),
                    ),
                    SizedBox(height:  Get.height*0.02),
                    
                       Text(
                      'Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning',
                      style: TextStyle(fontSize: 17, color: AppColor.black),
                    ),
                    SizedBox(height:  Get.height*0.17),

                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 253, 247, 247),
                    ),
                    child:
                    Align(
                    alignment: Alignment.bottomRight,
                    child:
                     Padding(
                      padding: const EdgeInsets.only(bottom: 30.0), // Adjust padding as needed
                      child:
                       Container(
                        width: 70,  // Set the width of the button
                        height: 70,  // Set the height of the button
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => const SplashScreen6());
                          },
                          style: 
                          ElevatedButton.styleFrom(
                            backgroundColor: AppColor.maincolor, // Set the button color
                            shape:
                             RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              
                               // Adjust border radius if needed
                            ),
                            
                          ),
                          child:
                           Icon(Icons.check_sharp)
                        ),
                      ),
                    ),
                  ),
                  
                      
                    ),
                ],
              ),
            ),
            ),
          
        ],
      ),
    );
  }
}
