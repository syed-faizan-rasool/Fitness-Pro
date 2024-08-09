import 'package:fitness_pro/res/constants/colors.dart';
import 'package:fitness_pro/view/dashboard/view/dashboardscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen2 extends StatelessWidget {
  const WelcomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           Expanded(
             child: Image.asset(
                        alignment: Alignment.bottomCenter,
             
                        'assets/fitness app/images/fitness 12.png',
                        height: 600,
                        width: 600,
                        fit: BoxFit.contain, // Ensure the image fits within its bounds without altering the background
                      ),
           ),
          Expanded(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: Get.height*0.09,),
                const Center(child: Text('Welcome, Syed Faizan Rasool',style: TextStyle(fontSize: 27,color: AppColor.black,fontWeight: FontWeight.w700),)),
                SizedBox(height: Get.height*0.01,),
                const Center(child: Text('You are all set now, let’s reach your ',style: TextStyle(fontSize: 17,color: AppColor.black,),)),
                SizedBox(height: Get.height*0.001,),
                
                const Center(child: Text('Goals together with us',style: TextStyle(fontSize: 17,color: AppColor.black,),)),
                
                SizedBox(height: Get.height*0.17,),
            
               Center(
                 child: ElevatedButton(
                      onPressed: () {
                 Get.to(()=>DashboardScreen());
                      } ,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.maincolor,
                        padding:
                            const EdgeInsets.symmetric(horizontal: 110, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: const Text(
                        'Go To Home',
                        style: TextStyle(color: AppColor.white, fontSize: 19),
                      ),
                    ),
               ),
                SizedBox(height: Get.height*0.04,),
            
              ],
            ),
          ),
        ],
      ),
    );
  }
}
