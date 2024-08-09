import 'package:fitness_pro/res/constants/colors.dart';
import 'package:fitness_pro/view/signup/view/signup_screen_4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignupScreen3 extends StatelessWidget {
  const SignupScreen3({super.key});

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

                      'assets/fitness app/images/fitness 9.png',
                      height: 600,
                      width: 600,
                      fit: BoxFit.contain, // Ensure the image fits within its bounds without altering the background
                    ),
          SizedBox(height: Get.height*0.02,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          SizedBox(height: Get.height*0.39,),

 Center(child: Text('Improve Shape',style: TextStyle(fontSize: 25,color: AppColor.white,fontWeight: FontWeight.w500),)),
  Padding(
    padding: const EdgeInsets.only(left: 120,right: 120),
    child: Divider(
      color: AppColor.white,
      // height: 20,
      
      thickness: 2,
    ),
  ),
          SizedBox(height: Get.height*0.005,),

          Center(child: Text('I have a low amount of body fat',style: TextStyle(fontSize: 17,color: AppColor.white,),)),
          Center(child: Text('and need / want to build ',style: TextStyle(fontSize: 17,color: AppColor.white,),)),
          Center(child: Text('more muscle',style: TextStyle(fontSize: 17,color: AppColor.white,),)),

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
Get.to(()=>SignupScreen4());
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
