import 'package:fitness_pro/res/constants/colors.dart';
import 'package:fitness_pro/view/Search/Controller/progress_tracker_controller.dart';
import 'package:fitness_pro/view/Workout_Tracker/View/abs_workout.dart';
import 'package:fitness_pro/view/Workout_Tracker/View/fullbody_workout.dart';
import 'package:fitness_pro/view/Workout_Tracker/View/lowerbody_workout.dart';
import 'package:fitness_pro/view/Workout_Tracker/View/shedule_workout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class WorkoutTrackerScreen extends StatefulWidget {
  WorkoutTrackerScreen({super.key});

  @override
  State<WorkoutTrackerScreen> createState() => _WorkoutTrackerScreenState();
}

class _WorkoutTrackerScreenState extends State<WorkoutTrackerScreen> {
  bool isHovered = false;
  bool isSwitched = false;
  bool isSwitched2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.maincolor,
        child: Column(
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
                  SizedBox(width: Get.width * 0.2),
                  const Text(
                    'Workout Tracker',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColor.white,
                    ),
                  ),
                  SizedBox(width: Get.width * 0.2),
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
                              height: 230,
                                child: LineChartWidgetController(isShowingMainData: true,)),

          ],
        ),
        
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 450,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 240, 237, 237),
            borderRadius: BorderRadius.circular(30),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 75,
                    width: 500,
                    decoration: BoxDecoration(
                      color: AppColor.rowcolor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: Get.width * 0.05),
                        const Text(
                          'Daily Workout Schedule',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(width: Get.width * 0.15),
                        ElevatedButton(
                          onPressed: () {
                            Get.to(()=>SheduleWorkoutScreen());
                          },
                          style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(AppColor.maincolor),
                            fixedSize: WidgetStatePropertyAll(Size(100, 50)),
                          ),
                          child: const Text(
                            'Check',
                            style: TextStyle(color: AppColor.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.02),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      SizedBox(width: Get.width * 0.025),
                      const Text(
                        'Upcoming Workout',
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w700,
                            color: AppColor.black),
                      ),
                      SizedBox(width: Get.width * 0.25),
                      const Text(
                        'See more',
                        style: TextStyle(
                          color: AppColor.maincolor,
                          decoration:
                               TextDecoration.underline
                              
                        ),
                      ),
                      // ),
                    ],
                  ),
                ),
                // SizedBox(height: Get.height * 0.02),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: const Offset(0, 3), // Only bottom shadow
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/fitness app/images/fitness1.jpg'),
                      radius: 40,
                    ),
                    title: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Fullbody Workout',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Today, 03:00pm ', style: TextStyle(fontSize: 14)),
                      ],
                    ),
                    trailing: Switch(
                        value: isSwitched,
                        onChanged: (value) => {
                              setState(() {
                                isSwitched = value;
                              }),
                            }),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),

                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: const Offset(0, 3), // Only bottom shadow
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/fitness app/images/fitness4.jpg'),
                      radius: 40,
                    ),
                    title: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Upperbody Workout',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('June 05, 02:00pm',
                            style: TextStyle(fontSize: 14)),
                      ],
                    ),
                    trailing: Switch(
                        value: isSwitched2,
                        onChanged: (value) => {
                              setState(() {
                                isSwitched2 = value;
                              }),
                            }),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                const Padding(
                  padding: EdgeInsets.all(17.0),
                  child: Text('What Do You Want to Train',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 25,bottom: 10),
                      child: Container(
                        height: 170,
                        width: 200,
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
                                  Text('Fullbody Workout',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                ],
                              ),
                                const Row(
                                children: [
                                  Text('11 Exercises | 32 mins'),
                                ],
                              ),
                                SizedBox(
                  height: Get.height * 0.03,
                ),
                InkWell(
                    onTap: () {
                     Get.to(()=>FullbodyWorkoutScreen());
                    },
                  child: Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(color: AppColor.maincolor,borderRadius: BorderRadius.circular(50)),
                    child: const Center(child: Text('View more',style: TextStyle(color: AppColor.white),)),
                  ),
                )
                              
                            ],
                          ),
                        )
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,right: 25,bottom: 10),
                      child: Container(
                        height: 170,
                        width: 150,
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
                            child: const Image(image: AssetImage('assets/fitness app/images/fitness 11.png'),fit: BoxFit.fill,),
                          )
                        ),
                        ),
                    ),
                  ],
                ), 
                SizedBox(height: Get.height*0.01,),
                 Row(
                  children: [
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
            Get.to(() =>   LowerbodyWorkoutScreen());
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
                ),
                SizedBox(height: Get.height*0.01,),
                   Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 25,bottom: 10),
                        child: Container(
                          height: 170,
                          width: 200,
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
                                    Text('Abs Workout',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                  const Row(
                                  children: [
                                    Text('14 Exercises | 20mins'),
                                  ],
                                ),
                                  SizedBox(
                    height: Get.height * 0.03,
                                   ),
                                   InkWell(
                  onTap: () {
                   Get.to(()=> AbsWorkoutScreen());
                  },
                                 child:  Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(color: AppColor.maincolor,borderRadius: BorderRadius.circular(50)),
                    child: const Center(child: Text('View more',style: TextStyle(color: AppColor.white),)),
                                   )
                                   )
                              ],
                            ),
                          )
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,right: 25,bottom: 10),
                        child: Container(
                          height: 170,
                          width: 150,
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
                              child: const Image(image: AssetImage('assets/fitness app/images/abs 2.png'),fit: BoxFit.fill,),
                            )
                          ),
                          ),
                      ),
                    ],
                                   ),
                 
                SizedBox(height: Get.height*0.01,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
