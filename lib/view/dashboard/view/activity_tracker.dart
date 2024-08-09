import 'package:fitness_pro/res/components/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fitness_pro/res/constants/colors.dart';

class ActivityTrackerScreen extends StatefulWidget {
   const ActivityTrackerScreen({super.key});

  @override
  
  ActivityTrackerScreenState createState() => ActivityTrackerScreenState();
 
}

class ActivityTrackerScreenState extends State<ActivityTrackerScreen> {
  final TextEditingController controller1 = TextEditingController();
  String? selectedValue;
//   List<Widget> _cards = [];
//    final List<String> imageUrls = [
// 'assets/fitness app/images/fitness1.jpg',
// 'assets/fitness app/images/fitness3.jpg',
// 'assets/fitness app/images/fitness5.jpg',
// 'assets/fitness app/images/fitness 1.jpg'
// 'assets/fitness app/images/fitness 2.jpg' 
// ];
//   int _currentIndex = 0;
//   late Timer _timer;
  var isHovered = true;

  




  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                // SizedBox(height: Get.height*0.02,),
                                Row(
                                  children: [
                                    SizedBox(width: Get.width*0.025,),
                                    const Text('Workout Progress',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w700,color: AppColor.black),),
                                    SizedBox(width: Get.width*0.055,),
                                 SizedBox(
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
                                                         value: 'Weekly',
                                                         child: Text('Weekly'),
                                                       ),
                                                       DropdownMenuItem(
                                                         value: 'Monthly',
                                                         child: Text('Monthly'),
                                                       ),
                                                     ],
                                                     onChanged: (value) {
                                                       setState(() {
                                                         controller1.text = value!;
                                                         // ignore: avoid_print
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
          // decoration: isHovered ? TextDecoration.underline : TextDecoration.none,
        ),
      ),
                                  ],
                                ),
 SizedBox(height: Get.height*0.02,),
     ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/fitness app/images/fitness1.jpg'),
              radius: 40,
            ),
            title: const Text('Fullbody Workout',style:TextStyle(fontWeight: FontWeight.bold)) ,
            subtitle: const Text('180 Calories Burn | 20minutes'),
            trailing: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: AppColor.maincolor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(Icons.arrow_forward_rounded)),
            
          ),
          //  SizedBox(height: Get.height*0.02,),
  ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/fitness app/images/lower body.jpg'),
              radius: 40,
            ),
            title: const Text('Lowerbody Workout',style:TextStyle(fontWeight: FontWeight.bold)),
            subtitle: const Text('180 Calories Burn | 20minutes'),
            trailing: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: AppColor.maincolor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(Icons.arrow_forward_rounded)),
            
          ), 
          // SizedBox(height: Get.height*0.02,),
  ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/fitness app/images/fitness4.jpg'),
              radius: 40,
            ),
            title: const Text('Upperbody Workout',style:TextStyle(fontWeight: FontWeight.bold)) ,
            subtitle: const Text('200 Calories Burn | 30minutes'),
            trailing: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: AppColor.maincolor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(Icons.arrow_forward_rounded)),
            
          ), 
          // SizedBox(height: Get.height*0.02,),
  ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/fitness app/images/abs.jpg'),
              radius: 40,
            ),
            title: const Text('Abs Workout',style:TextStyle(fontWeight: FontWeight.bold)) ,
            subtitle: const Text('190 Calories Burn | 25minutes'),
            trailing: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: AppColor.maincolor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(Icons.arrow_forward_rounded)),
            
          ), 
          // SizedBox(height: Get.height*0.02,),
  ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/fitness app/images/chest.jpg'),
              radius: 40,
              
            ),
            title: const Text('Chest Workout',style:TextStyle(fontWeight: FontWeight.bold)) ,
            subtitle: const Text('180 Calories Burn | 20minutes'),
            trailing: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: AppColor.maincolor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(Icons.arrow_forward_rounded)),
            
          ),

            ],
          ),
                  ]
        ),
      ),
            ])))
    );
  }
}

