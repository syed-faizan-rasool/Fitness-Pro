import 'package:fitness_pro/res/constants/colors.dart';
import 'package:fitness_pro/view/Workout_Tracker/videoplayer_workout.dart';
import 'package:fitness_pro/view/Workout_Tracker/View/shedule_workout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class UpperbodyWorkoutScreen extends StatefulWidget {
  UpperbodyWorkoutScreen({super.key});

  @override
  State<UpperbodyWorkoutScreen> createState() => UpperbodyWorkoutScreenState();
}

class UpperbodyWorkoutScreenState extends State<UpperbodyWorkoutScreen> {

bool isClicked = true;
bool isClicked_2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.maincolor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                SizedBox(height: Get.height * 0.1),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 217, 216, 219),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.arrow_back_ios_rounded),
                  ),
                  SizedBox(width: Get.width * 0.77),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: Get.width*0.17,
                ),
                Container(
                  height: 300,
                  width: 345,
                  decoration: const BoxDecoration(),
                  child: const Image(image:  AssetImage('assets/fitness app/images/upperbody 2.png'),fit: BoxFit.fill,),
                ),
              ],
            )
          ],
        ),
      ),
      bottomSheet: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 470,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 240, 237, 237),
          borderRadius: BorderRadius.circular(30),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height*0.02,
              ),
               Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Upperbody Workout',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(
                    width: Get.width*0.30,
                  ),
                   InkWell(
        onTap: () {
          setState(() {
            isClicked = !isClicked;
          });
        },
        child: Container(
          height: 30,
          width: 50,
          child: Image.asset(
            'assets/fitness app/images/heart.png',
            fit: BoxFit.fill,
            color: isClicked ? Colors.red : Colors.white,
          ),
        ),
      ),
                ],
              ),
              
               const Padding(
                 padding: const EdgeInsets.only(left: 8.0,bottom: 8.0),
               
                child: Text('11 Exercises | 32mins | 320 Calories Burn'),
              ),
              SizedBox(
                height: Get.height*0.02,
              ),
              Padding(
                 padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 75,
                  width: 500,
                  decoration: BoxDecoration(
                    color: AppColor.rowcolor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: InkWell(
                    onTap: () {
                      Get.to(()=> SheduleWorkoutScreen());
                    },
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: Get.width * 0.03),
                        const Icon(Icons.work_outline_rounded),
                        SizedBox(width: Get.width * 0.03),
                        const Text(
                          'Schedule Workout',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: Get.width * 0.13),
                       const Text('5/27, 09:00 AM',
                       style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w400),),
                        SizedBox(width: Get.width * 0.03),
                        const Icon(Icons.arrow_forward_ios_rounded),
                                  
                      ],
                    ),
                  ),
                ),
              ),
              // SizedBox(height: Get.height * 0.02),
              Padding(
                 padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 75,
                  width: 500,
                  decoration: BoxDecoration(
                    color: AppColor.rowcolor2,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: InkWell(
onTap: () {
          setState(() {
            isClicked_2 = !isClicked_2;
          });
},
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: Get.width * 0.03),
                        const Icon(Icons.double_arrow_sharp),
                        SizedBox(width: Get.width * 0.03),
                        const Text(
                          'Difficulty',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: Get.width * 0.38),
                        isClicked_2 ?  const Text ('Beginner',
                         style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w400),): const Text ('Advance',
                         style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w400),),
                        SizedBox(width: Get.width * 0.019),
                        const Icon(Icons.arrow_forward_ios_rounded),
                                  
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height*0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                      SizedBox(width: Get.width * 0.04),
                    const Text("You'll need",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600,),),
                    SizedBox(
                  width: Get.width*0.44,
                ),
                const Text('4 Items'),
                SizedBox(
                  height: Get.height*0.02,
                ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                          height: 170,
                          width: 170,
                          decoration: BoxDecoration(color: AppColor.rowcolor,borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Container(
                              height: 130,
                              width: 130,
                              decoration: BoxDecoration(color: AppColor.rowcolor,borderRadius: BorderRadius.circular(20)),
                              child: const Image(image: AssetImage('assets/fitness app/images/dumbles.png'),fit: BoxFit.fill,),
                            ),
                          ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('Barbell',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                        )
                      ],
                    ),
                    SizedBox(width: Get.width*0.02,),
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                          height: 170,
                          width: 170,
                          decoration: BoxDecoration(color: AppColor.rowcolor,borderRadius: BorderRadius.circular(20)),
                           child: Center(
                            child: Container(
                              height: 130,
                              width: 130,
                              decoration: BoxDecoration(color: AppColor.rowcolor,borderRadius: BorderRadius.circular(20)),
                              child: const Image(image: AssetImage('assets/fitness app/images/skipping rope.png'),fit: BoxFit.fill,),
                            ),
                          ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('Skipping Rope',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                        )
                      ],
                    ),
                    SizedBox(width: Get.width*0.02,),
                
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                          height: 170,
                          width: 170,
                          decoration: BoxDecoration(color: AppColor.rowcolor,borderRadius: BorderRadius.circular(20)),
                           child: Center(
                            child: Container(
                              height: 130,
                              width: 130,
                              decoration: BoxDecoration(color: AppColor.rowcolor,borderRadius: BorderRadius.circular(20)),
                              child: const Image(image: AssetImage('assets/fitness app/images/waterbottle.png'),fit: BoxFit.fill,),
                            ),
                          ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('1 Liter Water',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                        )
                      ],
                    ),
                    SizedBox(width: Get.width*0.02,),
                
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                          height: 170,
                          width: 170,
                          decoration: BoxDecoration(color: AppColor.rowcolor,borderRadius: BorderRadius.circular(20)),
                           child: Center(
                            child: Container(
                              height: 130,
                              width: 130,
                              decoration: BoxDecoration(color: AppColor.rowcolor,borderRadius: BorderRadius.circular(20)),
                              child: const Image(image: AssetImage('assets/fitness app/images/runningmachine.png'),fit: BoxFit.fill,),
                            ),
                          ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('Running Machine',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                        )
                      ],
                    ),
                 
                  ],
                ),
              ),
               
                SizedBox(
                  height: Get.height*0.03,
                ),
                  
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                      SizedBox(width: Get.width * 0.03),
                    const Text("Exercises:",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700,),),
                //     SizedBox(
                //   width: Get.width*0.44,
                // ),
                // Text('3 Sets',style: TextStyle(fontWeight: FontWeight.w700,),),
               
                  ],
                ),
              ),
               SizedBox(
                  height: Get.height*0.02,
                ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 20.0,top: 4.0),
              //   child: Text('Set 1:',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
              // ),
              SizedBox(
                height: Get.height*0.015,
              ),
              Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 217, 230, 241),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            SizedBox(width: Get.width * 0.02),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
      height: 90,
      width: 90,
      decoration: BoxDecoration(
        color: AppColor.rowcolor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20), // same as the container's borderRadius
        child: const Image(
          image: AssetImage('assets/fitness app/images/warmup.png'),
          fit: BoxFit.cover,
        ),
      ),
              ),
            ),
            SizedBox(width: Get.width * 0.02),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
      const Text(
        'Warm Up',
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
      ),
      SizedBox(height: Get.height * 0.01),
      const Text(
        '05:00',
        style: TextStyle(),
      ),
              ],
            ),
            SizedBox(width: Get.width * 0.37),
            const Icon(Icons.arrow_circle_right_outlined),
          ],
        ),
      ),
      
              SizedBox(
                height: Get.height*0.015,
              ),
              Container(
                
                decoration: BoxDecoration(color: AppColor.rowcolor2,borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    SizedBox(width: Get.width*0.02,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(color: AppColor.rowcolor  , borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
        borderRadius: BorderRadius.circular(20), // same as the container's borderRadius
        child: const Image(
          image: AssetImage('assets/fitness app/images/jumpingjack.png'),
          fit: BoxFit.cover,
        ),
      ),
                      ),
                   ),
                    SizedBox(width: Get.width*0.02,),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Jumping Jack',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                    SizedBox(height: Get.height*0.01,),
                      const Text('12x',style: TextStyle(),),
                    ],
                   ),
                    SizedBox(width: Get.width*0.275,),
                   const Icon(Icons.arrow_circle_right_outlined)
                  ],
                ),
              ),
              SizedBox(
                height: Get.height*0.015,
              ),
              Container(
                
                decoration: BoxDecoration(color: const Color.fromARGB(255, 217, 230, 241),borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    SizedBox(width: Get.width*0.02,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(color: AppColor.rowcolor  , borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
        borderRadius: BorderRadius.circular(20), // same as the container's borderRadius
        child: const Image(
          image: AssetImage('assets/fitness app/images/skipping.png'),
          fit: BoxFit.cover,
        ),
      ),
                      ),
                   ),
                    SizedBox(width: Get.width*0.02,),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Skipping',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                    SizedBox(height: Get.height*0.01,),
                      const Text('15x',style: TextStyle(),),
                    ],
                   ),
                    SizedBox(width: Get.width*0.37,),
                   const Icon(Icons.arrow_circle_right_outlined)
                  ],
                ),
              ),
              SizedBox(
                height: Get.height*0.015,
              ),
              Container(
                
                decoration: BoxDecoration(color: AppColor.rowcolor2,borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    SizedBox(width: Get.width*0.02,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(color: AppColor.rowcolor  , borderRadius: BorderRadius.circular(10)),
                     child: ClipRRect(
        borderRadius: BorderRadius.circular(20), // same as the container's borderRadius
        child: const Image(
          image: AssetImage('assets/fitness app/images/squats.png'),
          fit: BoxFit.cover,
        ),
      ),
                      ),
                   ),
                    SizedBox(width: Get.width*0.02,),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Squats',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                    SizedBox(height: Get.height*0.01,),
                      const Text('20x',style: TextStyle(),),
                    ],
                   ),
                    SizedBox(width: Get.width*0.40,),
                   const Icon(Icons.arrow_circle_right_outlined)
                  ],
                ),
              ),
              SizedBox(
                height: Get.height*0.015,
              ),
              Container(
                
                decoration: BoxDecoration(color: const Color.fromARGB(255, 217, 230, 241),borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    SizedBox(width: Get.width*0.02,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(color: AppColor.rowcolor  , borderRadius: BorderRadius.circular(10)),
                       child: ClipRRect(
        borderRadius: BorderRadius.circular(20), // same as the container's borderRadius
        child: const Image(
          image: AssetImage('assets/fitness app/images/armraises.png'),
          fit: BoxFit.cover,
        ),
      ),
                      ),
                   ),
                    SizedBox(width: Get.width*0.02,),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Arm Raises',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                    SizedBox(height: Get.height*0.01,),
                      const Text('00:53',style: TextStyle(),),
                    ],
                   ),
                    SizedBox(width: Get.width*0.315,),
                   const Icon(Icons.arrow_circle_right_outlined)
                  ],
                ),
              ),
              SizedBox(
                height: Get.height*0.015,
              ),
              Container(
                
                decoration: BoxDecoration(color: AppColor.rowcolor2,borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    SizedBox(width: Get.width*0.02,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(color: AppColor.rowcolor  , borderRadius: BorderRadius.circular(10)),
                     child: ClipRRect(
        borderRadius: BorderRadius.circular(20), // same as the container's borderRadius
        child: const Image(
          image: AssetImage('assets/fitness app/images/restanddrink.png'),
          fit: BoxFit.cover,
        ),
      ),
                      ),
                   ),
                    SizedBox(width: Get.width*0.02,),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Rest and Drink',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                    SizedBox(height: Get.height*0.01,),
                      const Text('02:00',style: TextStyle(),),
                    ],
                   ),
                    SizedBox(width: Get.width*0.26,),
                   const Icon(Icons.arrow_circle_right_outlined)
                  ],
                ),
              ),
              SizedBox(
                height: Get.height*0.015,
              ),
              Container(
                
                decoration: BoxDecoration(color: const Color.fromARGB(255, 217, 230, 241),borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    SizedBox(width: Get.width*0.02,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(color: AppColor.rowcolor  , borderRadius: BorderRadius.circular(10)),
                       child: ClipRRect(
        borderRadius: BorderRadius.circular(20), // same as the container's borderRadius
        child: const Image(
          image: AssetImage('assets/fitness app/images/inclinepushups.png'),
          fit: BoxFit.cover,
        ),
      ),
                      ),
                   ),
                    SizedBox(width: Get.width*0.02,),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Incline Push-Ups',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                    SizedBox(height: Get.height*0.01,),
                      const Text('12x',style: TextStyle(),),
                    ],
                   ),
                    SizedBox(width: Get.width*0.22,),
                   const Icon(Icons.arrow_circle_right_outlined)
                  ],
                ),
              ),
              SizedBox(
                height: Get.height*0.015,
              ),
              Container(
                
                decoration: BoxDecoration(color: AppColor.rowcolor2,borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    SizedBox(width: Get.width*0.02,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(color: AppColor.rowcolor  , borderRadius: BorderRadius.circular(10)),
                       child: ClipRRect(
        borderRadius: BorderRadius.circular(20), // same as the container's borderRadius
        child: const Image(
          image: AssetImage('assets/fitness app/images/pushups.png'),
          fit: BoxFit.cover,
        ),
      ),
                      ),
                   ),
                    SizedBox(width: Get.width*0.02,),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Push-Ups',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                    SizedBox(height: Get.height*0.01,),
                      const Text('15x',style: TextStyle(),),
                    ],
                   ),
                    SizedBox(width: Get.width*0.355,),
                   const Icon(Icons.arrow_circle_right_outlined)
                  ],
                ),
              )
              ,SizedBox(
                height: Get.height*0.015,
              ),
              Container(
                
                decoration: BoxDecoration(color: const Color.fromARGB(255, 217, 230, 241),borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    SizedBox(width: Get.width*0.02,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(color: AppColor.rowcolor  , borderRadius: BorderRadius.circular(10)),
                       child: ClipRRect(
        borderRadius: BorderRadius.circular(20), // same as the container's borderRadius
        child: const Image(
          image: AssetImage('assets/fitness app/images/cobrastreach.png'),
          fit: BoxFit.cover,
        ),
      ),
                      ),
                   ),
                    SizedBox(width: Get.width*0.02,),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Cobra Stretch',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                    SizedBox(height: Get.height*0.01,),
                      const Text('20x',style: TextStyle(),),
                    ],
                   ),
                    SizedBox(width: Get.width*0.275,),
                   const Icon(Icons.arrow_circle_right_outlined)
                  ],
                ),
              ),
              SizedBox(
                height: Get.height*0.05,
              ),
    Stack(
  children: [
    // Your other widgets
    Center(
      child: SizedBox(
        height: 70,
        width: 270,
        child: FloatingActionButton(
          onPressed: () {
           Get.to(()=>const VideoPlayerScreen());
          },
          backgroundColor: AppColor.maincolor,
          child: const Text('Start Workout'),
        ),
      ),
    ),
    
  ],
),
SizedBox(
                height: Get.height*0.02,
              ),
  ],
)

            
          
          
        ),
      ),
              ),
    );
  }
}
