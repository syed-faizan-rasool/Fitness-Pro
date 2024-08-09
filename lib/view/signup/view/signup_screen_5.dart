import 'package:fitness_pro/res/constants/colors.dart';
import 'package:fitness_pro/view/splashscreen/view/welcome_screen_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignupScreen5 extends StatelessWidget {
  const SignupScreen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: Get.height*0.05,),
          const Center(child: Text('What is your goal ?',style: TextStyle(fontSize: 27,color: AppColor.black,fontWeight: FontWeight.w700),)),
          SizedBox(height: Get.height*0.005,),

          const Center(child: Text('It will help us to choose a best',style: TextStyle(fontSize: 17,color: AppColor.black,),)),
          const Center(child: Text('program for you',style: TextStyle(fontSize: 17,color: AppColor.black,),)),
          SizedBox(height: Get.height*0.03,),
          // const CustomDesignCard(imgName: '', heading: '', baseLine: '',),
         Expanded(
           child: Padding(
             padding: const EdgeInsets.all(30.0),
             child: Stack(
             
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: AppColor.maincolor,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                    ),
                    
                    Image.asset(
                      
                      alignment: Alignment.topCenter,
                      'assets/fitness app/images/fitness 10.png',
                      height: 350,
                      width: 350,
                      fit: BoxFit.contain, // Ensure the image fits within its bounds without altering the background
                    ),
          SizedBox(height: Get.height*0.02,),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              
 Center(child: Text('Lose a Fat',style: TextStyle(fontSize: 25,color: AppColor.white,fontWeight: FontWeight.w500),)),
  Padding(
    padding: const EdgeInsets.only(left: 120,right: 120),
    child: Divider(
      color: AppColor.white,
      // height: 20,
      
      thickness: 2,
    ),
  ),
          SizedBox(height: Get.height*0.005,),

          Center(child: Text('I have over 20 lbs to lose. I want to ',style: TextStyle(fontSize: 17,color: AppColor.white,),)),
          Center(child: Text('drop all this fat and gain ',style: TextStyle(fontSize: 17,color: AppColor.white,),)),
          Center(child: Text('muscle mass',style: TextStyle(fontSize: 17,color: AppColor.white,),)),

          SizedBox(height: Get.height*0.05,),
            
            ],
          )
         

                  ],
                ),
           ),
         ),
          SizedBox(height: Get.height*0.05,),

         ElevatedButton(
              onPressed: () {
Get.to(()=>WelcomeScreen2());
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
                'Confirm',
                style: TextStyle(color: AppColor.white, fontSize: 19),
              ),
            ),
          SizedBox(height: Get.height*0.04,),

        ],
      ),
    );
  }
}
