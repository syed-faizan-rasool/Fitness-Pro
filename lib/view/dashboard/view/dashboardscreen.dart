import 'dart:async';
import 'package:fitness_pro/res/components/container.dart';
import 'package:fitness_pro/res/components/textfield.dart';
import 'package:fitness_pro/view/Workout_Tracker/View/abs_workout.dart';
import 'package:fitness_pro/view/Workout_Tracker/View/fullbody_workout.dart';
import 'package:fitness_pro/view/Workout_Tracker/View/lowerbody_workout.dart';
import 'package:fitness_pro/view/dashboard/view/chest_workout.dart';
import 'package:fitness_pro/view/dashboard/view/notification.dart';
import 'package:fitness_pro/view/dashboard/view/upperbody_workout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fitness_pro/res/components/card_design.dart'; // Import your custom card design
import 'package:fitness_pro/res/constants/colors.dart';

class DashboardScreen extends StatefulWidget {
   const DashboardScreen({super.key});

  @override
  
  // ignore: library_private_types_in_public_api
  _DashboardScreenState createState() => _DashboardScreenState();
 
}

class _DashboardScreenState extends State<DashboardScreen> {
  final TextEditingController controller1 = TextEditingController();
  String? selectedValue;
  List<Widget> _cards = [];
   final List<String> imageUrls = [
'assets/fitness app/images/fitness1.jpg',
'assets/fitness app/images/fitness3.jpg',
'assets/fitness app/images/fitness5.jpg',
'assets/fitness app/images/fitness 1.jpg'
'assets/fitness app/images/fitness 2.jpg' 
];
  int _currentIndex = 0;
  late Timer _timer;
  var isHovered = true;

  


  @override
  void initState() {
    super.initState();
    // Initialize your cards here
    _cards = [
      const CardDesign(
        title: 'Full Body Workout',
        image:
            Image(image: AssetImage('assets/fitness app/images/fitness 15.jpg'),fit: BoxFit.fill,),
            
      ), // Example card, replace with your actual card widgets
      const CardDesign(
        title: 'Upper body Workout',
        image:
            Image(image: AssetImage('assets/fitness app/images/fitness 13.jpg'),fit: BoxFit.fill,),
      ),
      const CardDesign(
        title: 'Lower body Workout',
        image: Image(
            image: AssetImage('assets/fitness app/images/fitness 14.jpg'),fit: BoxFit.fill,),
      ),
      const CardDesign(
        title: 'Abs Workout',
        image: Image(
            image: AssetImage('assets/fitness app/images/fitness 16.jpg'),fit: BoxFit.fill,),
      ),
      const CardDesign(
        title: 'Chest Workout',
        image: Image(
            image: AssetImage('assets/fitness app/images/fitness 17.jpg'),fit: BoxFit.fill,),
      ),
    ];
    // Set up the timer to change cards every 5 seconds
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % _cards.length;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text('Fitness ',
            style: TextStyle(
           
             fontSize: 30,
                fontWeight: FontWeight.w700,
                color: AppColor.white)),
                // SizedBox(width: Get.width*0.005,),
                Text('Pro',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: AppColor.darkRed)),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 96, 175, 240),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(height: Get.height * 0.05),
                        const Text(
                          'Welcome Back,',
                          style: TextStyle(fontSize: 17, color: AppColor.black),
                        ),
                        SizedBox(height: Get.height * 0.005),
                        const Center(
                          child: Text(
                            'Syed Faizan Rasool',
                            style: TextStyle(
                                fontSize: 25,
                                color: AppColor.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: Get.width * 0.23),
                    InkWell(
                      onTap: () {
                        Get.to(()=>const NotificationScreen());
                      },
                      child: Badge(
                        backgroundColor: AppColor.darkRed,
                        alignment: AlignmentDirectional.topEnd,
                        smallSize: 9,
                        child: Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 240, 236, 236),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Icon(
                            Icons.notifications_active_outlined,
                            size: 30,   
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Get.height * 0.03),
              // Display the current card based on the index
              _cards[_currentIndex],
               SizedBox(height: Get.height * 0.03),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 75,
                  width: 500,
                  decoration: BoxDecoration(color: const Color.fromARGB(255, 240, 237, 237),
                  borderRadius: BorderRadius.circular(30)
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        SizedBox(width: Get.width * 0.08),
                      const Text('Today Target',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                        SizedBox(width: Get.width * 0.30),
                      ElevatedButton(
                            onPressed: () {
                              // Handle button press
                            },
                            style:  const ButtonStyle(backgroundColor:WidgetStatePropertyAll(AppColor.maincolor),
                            fixedSize:WidgetStatePropertyAll(Size(100,50)) 
                            ),
                            child: const Text('Check',style:TextStyle(color: AppColor.black) ,),
                          ),
                    ],
                  ),
                ),
              ),
               SizedBox(height: Get.height * 0.02),
               const Padding(
                 padding: EdgeInsets.all(15.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text('Activity Status',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w700),),
                   ],
                 ),
               ),
               SizedBox(height: Get.height * 0.01),
               Container(
                height: 190,
                width: 350,
                decoration: BoxDecoration(color: const Color.fromARGB(255, 240, 237, 237),
                  borderRadius: BorderRadius.circular(30), ),
                 child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(width: Get.width * 0.016),

                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 50,
                        width: 10,
                        decoration: const BoxDecoration(color: AppColor.maincolor,
                         borderRadius:  BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 80,
                        width: 10,
                        decoration: const BoxDecoration(color: AppColor.maincolor, borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 60,
                        width: 10,
                        decoration: const BoxDecoration(color: AppColor.maincolor, borderRadius:  BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 100,
                        width: 10,
                        decoration: const BoxDecoration(color: AppColor.maincolor, borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 40,
                        width: 10,
                        decoration: const BoxDecoration(color: AppColor.maincolor, borderRadius:  BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 70,
                        width: 10,
                        decoration: const BoxDecoration(color: AppColor.maincolor, borderRadius:  BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height:100,
                        width: 10,
                        decoration: const BoxDecoration(color: AppColor.maincolor, borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 110,
                        width: 10,
                        decoration: const BoxDecoration(color: AppColor.maincolor, borderRadius:  BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 100,
                        width: 10,
                        decoration: const BoxDecoration(color: AppColor.maincolor, borderRadius:  BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: InkWell(
                        onTap: () {
                          //  _showTextDialog(context, 'This is the text displayed on tapping!');
                        },
                        child: Container(
                          height: 120,
                          width: 10,
                          decoration: const BoxDecoration(color: AppColor.maincolor, borderRadius:  BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),),
                        ),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 95,
                        width: 10,
                        decoration: const BoxDecoration(color:  Color.fromARGB(255, 194, 192, 192), borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 80,
                        width: 10,
                        decoration: const BoxDecoration(color:  Color.fromARGB(255, 194, 192, 192), borderRadius:  BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 90,
                        width: 10,
                        decoration: const BoxDecoration(color:  Color.fromARGB(255, 194, 192, 192), borderRadius:  BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),),
                      ),
                    ), Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 80,
                        width: 10,
                        decoration: const BoxDecoration(color:  Color.fromARGB(255, 194, 192, 192), borderRadius:  BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),),
                      ),
                    ),
                    
                  ],
                 ),
               ),
               SizedBox(height: Get.height * 0.02),
               Padding(
                 padding: const EdgeInsets.all(11.0),
                 child: Row(
                  children: [
                    CustomContainer(
                      height: 400.0,
                      width: 190.0,
                      color:  const Color.fromARGB(255, 240, 237, 237),
                      widget: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 30.0,left: 15.0,right: 10.0),
                                child: Container(
                                  height: 140.0,
                                  width: 30.0,
                                 decoration: const BoxDecoration( color:  Color.fromARGB(255, 194, 192, 192),borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
                                ),
                              ),
                               Padding(
                                padding: const EdgeInsets.only(bottom: 30.0,left: 15.0,right: 10.0),
                                child: Container(
                                  height: 200.0,
                                  width: 30.0,
                                  decoration: const BoxDecoration( color:  AppColor.maincolor,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))),
                                ),
                               ),
                                
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 37,left:0 ,right: 10,),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Water Intake',style: TextStyle(color: AppColor.black,fontSize: 19,fontWeight: FontWeight.w700),),
                                SizedBox(height: Get.height*0.015,),
                                 const Text('4 Liters',style: TextStyle(color: AppColor.maincolor,fontWeight: FontWeight.w700,fontSize: 17),),
                                SizedBox(height: Get.height*0.020,),
                                 const Text('Real time updates',style: TextStyle(color: Color.fromARGB(255, 88, 88, 88),fontWeight: FontWeight.w700,fontSize: 14),),
                                SizedBox(height: Get.height*0.013,),
                                 Row(crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                    const Text('*',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                                    SizedBox(width: Get.width*0.02,),
                                     Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         const Text('6am - 8am',style: TextStyle(color: AppColor.black,fontSize: 14),),
                                    SizedBox(height: Get.height*0.0001,),
                                         const Text('600ml',style: TextStyle(color: AppColor.maincolor,fontSize: 11),),


                                       ],
                                     ),
                                   ],
                                 ),
                                SizedBox(height: Get.height*0.013,),
                                     Row(crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                    const Text('*',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                                    SizedBox(width: Get.width*0.02,),
                                     Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         const Text('9am - 11am',style: TextStyle(color: AppColor.black,fontSize: 14),),
                                    SizedBox(height: Get.height*0.0001,),
                                         const Text('500ml',style: TextStyle(color: AppColor.maincolor,fontSize: 11),),


                                       ],
                                     ),
                                   ],
                                 ),
                                SizedBox(height: Get.height*0.013,),
                                     Row(crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                    const Text('*',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                                    SizedBox(width: Get.width*0.02,),
                                     Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         const Text('11am - 2pm',style: TextStyle(color: AppColor.black,fontSize: 14),),
                                    SizedBox(height: Get.height*0.0001,),
                                         const Text('1000ml',style: TextStyle(color: AppColor.maincolor,fontSize: 11),),


                                       ],
                                     ),
                                   ],
                                 ),
                                SizedBox(height: Get.height*0.013,),
                                    Row(crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                    const Text('*',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                                    SizedBox(width: Get.width*0.02,),
                                     Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         const Text('2pm - 4pm',style: TextStyle(color: AppColor.black,fontSize: 14),),
                                    SizedBox(height: Get.height*0.0001,),
                                         const Text('700ml',style: TextStyle(color: AppColor.maincolor,fontSize: 11),),


                                       ],
                                     ),
                                   ],
                                 ),
                                SizedBox(height: Get.height*0.013,),
                                     Row(crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                    const Text('*',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                                    SizedBox(width: Get.width*0.02,),
                                     Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         const Text('4pm - now',style: TextStyle(color: AppColor.black,fontSize: 14),),
                                    SizedBox(height: Get.height*0.0001,),
                                         const Text('900ml',style: TextStyle(color: AppColor.maincolor,fontSize: 11),),


                                       ],
                                     ),
                                   ],
                                 ),
                                SizedBox(height: Get.height*0.013,),
                                    
                                
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: Get.width*0.03,),
                    Column(
                      children: [

                        CustomContainer(
                          height: 190.0,
                          width: 150.0,
                            color:  const Color.fromARGB(255, 240, 237, 237),
                            widget: const Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Sleep',style: TextStyle(color: AppColor.black,fontSize: 19,fontWeight: FontWeight.w700),),
                                // SizedBox(height: Get.height*0.01,),
                                  Text('8h 20m',style: TextStyle(color: AppColor.maincolor,fontSize: 21,fontWeight: FontWeight.w700),),
                                // SizedBox(height: Get.height*0.01,),
                                  Image(image: AssetImage('assets/fitness app/images/sleep 1.png',),height: 103,width: 200,),
                                // SizedBox(height: Get.height*0.013,),

                                ],
                              ),
                            ),
                        ),
                        SizedBox(height: Get.height*0.02,),
                         CustomContainer(
                          height: 190.0,
                          width: 150.0,
                            color:  const Color.fromARGB(255, 240, 237, 237),
                            widget: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Calories',style: TextStyle(color: AppColor.black,fontSize: 19,fontWeight: FontWeight.w700),),
                                // SizedBox(height: Get.height*0.01,),
                                  const Text('760 kCal',style: TextStyle(color: AppColor.maincolor,fontSize: 21,fontWeight: FontWeight.w700),),
                                SizedBox(height: Get.height*0.01,),
                                Center(
                                  child: CustomContainer(
                                    height: 90.0,
                                    width: 90.0,
                                    color: AppColor.maincolor,
                                    border: Border.all(width: 8.0,color:  const Color.fromARGB(255, 153, 155, 247)),
                                  widget: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Center(child: Text('230kCal',style: TextStyle(color: AppColor.white),)),
                                SizedBox(height: Get.height*0.001,),
                                      const Center(child: Text('left',style: TextStyle(color: AppColor.white),)),
                                    ],
                                  )
                                  ),
                                  
                                )

                                ],
                              ),
                            ),
                        ),
                      ],
                    )
                  ],
                 ),
               ),
                                SizedBox(height: Get.height*0.02,),
                                Row(
                                  children: [
                                    SizedBox(width: Get.width*0.025,),
                                    const Text('Workout Progress',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w700,color: AppColor.black),),
                                    SizedBox(width: Get.width*0.055,),
                                 Container(
                                  height: 60,
                                  width: 160,
                                  // decoration: BoxDecoration(
                                  //   borderRadius: BorderRadius.circular(150),
                                  // color: AppColor.maincolor,

                                  // ),
                                   child: CustomTextField(
                                                 controller: controller1,
                                                 labelText: 'Select',
                                                 borderRadius: BorderRadius.circular(150),
                                                 
                                                //  prefixIcon: Icons.person_2_rounded,
                                                 suffixIcon: DropdownButtonHideUnderline(
                                                   child: DropdownButton<String>(
                                                    //  icon: const Icon(Icons.arrow_drop_down),
                                                     value: selectedValue,
                                                     alignment: Alignment.centerLeft,
                                                     items: const [
                                                       DropdownMenuItem(
                                                         value: 'Daily',
                                                         child: Text('Daily'),
                                                       ),
                                                       DropdownMenuItem(
                                                         child: Text('Weekly'),
                                                         value: 'Weekly',
                                                       ),
                                                       DropdownMenuItem(
                                                         child: Text('Monthly'),
                                                         value: 'Monthly',
                                                       ),
                                                     ],
                                                     onChanged: (value) {
                                                       setState(() {
                                                         controller1.text = value!;
                                                         print('Selected: $value');
                                                       });
                                                     },
                                                   ),
                                                 ),
                                                     readOnly: true,
                                                      fillColor: AppColor.maincolor,
                                                   ),
                                 ),
                                  ],
                                ),
                                SizedBox(height: Get.height*0.02,),
                                Container(
                height: 190,
                width: 350,
                decoration: BoxDecoration(color: const Color.fromARGB(255, 240, 237, 237),
                  borderRadius: BorderRadius.circular(30), ),
                 child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(width: Get.width * 0.016),

                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 50,
                        width: 10,
                        decoration: const BoxDecoration(color: AppColor.maincolor,
                         borderRadius:  BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 80,
                        width: 10,
                        decoration: const BoxDecoration(color: AppColor.maincolor, borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 60,
                        width: 10,
                        decoration: const BoxDecoration(color: AppColor.maincolor, borderRadius:  BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 100,
                        width: 10,
                        decoration: const BoxDecoration(color: AppColor.maincolor, borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 40,
                        width: 10,
                        decoration: const BoxDecoration(color: AppColor.maincolor, borderRadius:  BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 70,
                        width: 10,
                        decoration: const BoxDecoration(color: AppColor.maincolor, borderRadius:  BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height:100,
                        width: 10,
                        decoration: const BoxDecoration(color: AppColor.maincolor, borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 110,
                        width: 10,
                        decoration: const BoxDecoration(color: AppColor.maincolor, borderRadius:  BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 100,
                        width: 10,
                        decoration: const BoxDecoration(color: AppColor.maincolor, borderRadius:  BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: InkWell(
                        onTap: () {
                          //  _showTextDialog(context, 'This is the text displayed on tapping!');
                        },
                        child: Container(
                          height: 120,
                          width: 10,
                          decoration: const BoxDecoration(color: AppColor.maincolor, borderRadius:  BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),),
                        ),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 95,
                        width: 10,
                        decoration: const BoxDecoration(color:  Color.fromARGB(255, 194, 192, 192), borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 80,
                        width: 10,
                        decoration: const BoxDecoration(color:  Color.fromARGB(255, 194, 192, 192), borderRadius:  BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 90,
                        width: 10,
                        decoration: const BoxDecoration(color:  Color.fromARGB(255, 194, 192, 192), borderRadius:  BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),),
                      ),
                    ), Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 80,
                        width: 10,
                        decoration: const BoxDecoration(color:  Color.fromARGB(255, 194, 192, 192), borderRadius:  BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),),
                      ),
                    ),
                    
                  ],
                 ),
               ),
 SizedBox(height: Get.height*0.02,),
                                Row(
                                  children: [
                                    SizedBox(width: Get.width*0.025,),
                                    const Text('Latest Workout',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w700,color: AppColor.black),),
                                    SizedBox(width: Get.width*0.3,),
                                Text(
        'See more',
        style: TextStyle(
          color: isHovered ? Colors.blue : Colors.black,
          decoration: isHovered ? TextDecoration.underline : TextDecoration.none,
        ),
      ),
                                  ],
                                ),
 SizedBox(height: Get.height*0.02,),
      InkWell(
onTap: () {
  Get.to(()=>FullbodyWorkoutScreen());
},
        child: ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/fitness app/images/fitness1.jpg'),
                    radius: 40,
                  ),
                  title: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Fullbody Workout',style:TextStyle(fontWeight: FontWeight.bold)),
                      Text('150 Calories Burn | 20 minutes',style:TextStyle(fontSize: 14)),
                    
                    ],
                  ) ,
                  subtitle:Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        height: 13,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: AppColor.maincolor,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        height: 13,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 194, 192, 192),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
                        ),
                      ),
                    ),
                  ],),
                  trailing: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: AppColor.maincolor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(Icons.arrow_forward_rounded)),
                  
                ),
      ),
          //  SizedBox(height: Get.height*0.02,),
   InkWell(
    onTap: () {
      Get.to(()=>LowerbodyWorkoutScreen());
    },
    
     child: ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/fitness app/images/lower body.jpg'),
                    radius: 40,
                  ),
                  title: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Lowerbody Workout',style:TextStyle(fontWeight: FontWeight.bold)),
                      Text('120 Calories Burn | 20 minutes',style:TextStyle(fontSize: 14)),
                    
                    ],
                  ) ,
                  subtitle:Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        height: 13,
                        width: 110,
                        decoration: const BoxDecoration(
                          color: AppColor.maincolor,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        height: 13,
                        width: 90,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 194, 192, 192),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
                        ),
                      ),
                    ),
                  ],),
                  trailing: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: AppColor.maincolor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(Icons.arrow_forward_rounded)),
                  
                ),
   ),
          // SizedBox(height: Get.height*0.02,),
   InkWell(
    onTap: () {
      Get.to(()=>UpperbodyWorkoutScreen());
    },
     child: ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/fitness app/images/fitness4.jpg'),
                    radius: 40,
                  ),
                  title: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Upperbody Workout',style:TextStyle(fontWeight: FontWeight.bold)),
                    Text('200 Calories Burn | 30 minutes',style:TextStyle(fontSize: 14)),
                    
                    ],
                  ) ,
                  subtitle:Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        height: 13,
                        width: 200,
                        decoration: const BoxDecoration(
                          color: AppColor.maincolor,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10),topRight: Radius.circular(10),bottomRight: Radius.circular(10),)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        // height: 13,
                        // width: 120,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 194, 192, 192),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
                        ),
                      ),
                    ),
                  ],),
                  trailing: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: AppColor.maincolor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(Icons.arrow_forward_rounded)),
                  
                ),
   ),
          // SizedBox(height: Get.height*0.02,),
   InkWell(
    onTap: () {
      Get.to(()=>AbsWorkoutScreen());
    },
     child: ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/fitness app/images/abs.jpg'),
                    radius: 40,
                  ),
                  title: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Abs Workout',style:TextStyle(fontWeight: FontWeight.bold)),
                      Text('180 Calories Burn | 30 minutes',style:TextStyle(fontSize: 14)),
                    
                    ],
                  ) ,
                  subtitle:Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        height: 13,
                        width: 160,
                        decoration: const BoxDecoration(
                          color: AppColor.maincolor,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        height: 13,
                        width: 40,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 194, 192, 192),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
                        ),
                      ),
                    ),
                  ],),
                  trailing: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: AppColor.maincolor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(Icons.arrow_forward_rounded)),
                  
                ),
   ),
          // SizedBox(height: Get.height*0.02,),
   InkWell(
    onTap: () {
      Get.to(()=>ChestWorkoutScreen());
    },
     child: ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/fitness app/images/chest 2.png'),
                    radius: 40,
                  ),
                  title: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Chest Workout',style:TextStyle(fontWeight: FontWeight.bold)),
                      Text('170 Calories Burn | 20 minutes',style:TextStyle(fontSize: 14)),
                    
                    ],
                  ) ,
                  subtitle:Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        height: 13,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: AppColor.maincolor,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        height: 13,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 194, 192, 192),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
                        ),
                      ),
                    ),
                  ],),
                  trailing: Container(
                  height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: AppColor.maincolor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(Icons.arrow_forward_rounded)),
                  
                ),
   ),

            ],
          ),
        ),
      ),
    );
  }
}

