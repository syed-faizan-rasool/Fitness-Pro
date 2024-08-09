import 'package:fitness_pro/res/constants/colors.dart';
import 'package:fitness_pro/view/Search/Controller/progress_tracker_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProgressTrackerScreen extends StatelessWidget {
  LineChartWidgetController progressController = const LineChartWidgetController(isShowingMainData: true,);


   ProgressTrackerScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
                const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 217, 216, 219),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.arrow_back_ios_rounded),
                  ),
                  SizedBox(width: Get.width * 0.21),
                  const Text(
                    'Progress photo',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(width: Get.width * 0.21),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 217, 216, 219),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.more_horiz_outlined),
                  ),
                ],
              ),
            ),

                              SizedBox(height: Get.height * 0.03),
Container(
  height: 130,
  width: 340,
decoration: BoxDecoration(
  color: AppColor.rowcolor2,
  borderRadius: BorderRadius.circular(30)
),
child: Row(
  children: [
    SizedBox(
      width: Get.width*0.03,
    ),
    Container(
    height: 100,
    width: 100,
    decoration: BoxDecoration(
      // color: AppColor.blocksView,
  borderRadius: BorderRadius.circular(50)
     ),
    child: Image(image: AssetImage('assets/fitness app/images/man calender.png'),fit: BoxFit.fill,),
  )],
),
),
 SizedBox(height: Get.height*0.01,),
                 Row(
                  children: [
 SizedBox(width: Get.width*0.03,),

                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 25,bottom: 10),
                      child: Container(
                        height: 170,
                        width: 220,
                        decoration: const BoxDecoration(
                          color: AppColor.rowcolor,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomLeft: Radius.circular(30)),
                        ),
                        child:  Padding(
                          padding: const EdgeInsets.all(17.0),
                          child: Column(
                            children: [
                              const Row(
                                children: [
                                  Text('Lowerbody Workout',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                ],
                              ),
                                const Row(
                                children: [
                                  Text('12 Exercises | 40mins'),
                                ],
                              ),
                                SizedBox(
                  height: Get.height * 0.03,
                ),
               Center(
        child: InkWell(
          onTap: () {
            // Get.to(() =>   LowerbodyWorkoutScreen());
          },
          child: Container(
            height: 50,
            width: 120,
            decoration: BoxDecoration(
              color: AppColor.maincolor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Center(
              child: Text(
                'View more',
                style: TextStyle(color: AppColor.white),
              ),
            ),),),),
                              
                            ],
                          ),
                        )
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,right: 25,bottom: 10),
                      child: Container(
                        height: 170,
                        width: 130,
                        decoration: const BoxDecoration(
                          color: AppColor.rowcolor,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomRight: Radius.circular(30)),
                        ),
                        child:  Padding(
                          padding: const EdgeInsets.all(17.0),
                          child: Container(
                            height: 120,
                            width: 90,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                            child: const Image(image: AssetImage('assets/fitness app/images/lwr bdy.png'),fit: BoxFit.fill,),
                          )
                        ),
                        ),
                    ),
                  ],
                )

        ],
      ),
    );
  }
}