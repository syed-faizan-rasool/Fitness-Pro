import 'package:fitness_pro/res/components/container.dart';
import 'package:fitness_pro/res/components/time_text.dart';
import 'package:fitness_pro/res/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SheduleWorkoutScreen extends StatefulWidget {
  const SheduleWorkoutScreen({Key? key}) : super(key: key);

  @override
  _SheduleWorkoutScreenState createState() => _SheduleWorkoutScreenState();
}

class _SheduleWorkoutScreenState extends State<SheduleWorkoutScreen> {
  int selectedIndex = -1; 
    DateTime? selectedDate;


  void selectContainer(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<String> weekdays = [
    "Monday", "Tuesday", "Wednsday", "Thursday", "Friday", "Saturday", "Sunday",
    "Monday", "Tuesday", "Wednsday", "Thursday", "Friday", "Saturday", "Sunday",
    "Monday", "Tuesday", "Wednsday", "Thursday", "Friday", "Saturday", "Sunday",
    "Monday", "Tuesday", "Wednsday", "Thursday", "Friday", "Saturday", "Sunday",
    "Monday", "Tuesday"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 30),
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
                SizedBox(width: Get.width * 0.185),
                const Text(
                  'Workout Schedule',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColor.black,
                  ),
                ),
                SizedBox(width: Get.width * 0.185),
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

          const SizedBox(height: 30),

InkWell(
  onTap: () async{
     var datePicked =  await showDatePicker(
                context: context, 
                initialDate: DateTime.now(),
                firstDate: DateTime(2023), 
                lastDate: DateTime(2025),
                );
if (datePicked != null) {
  setState(() {
                   selectedDate = datePicked;
                });
} else {
  
}
                
  },
  child: 
          Row(
            mainAxisAlignment:MainAxisAlignment.center ,
            children: [
              Icon(Icons.arrow_back_ios_new_rounded ,),
          const SizedBox(width: 30),



    Text(
            selectedDate != null
                ? DateFormat.yMMM().format(selectedDate!)
                : "Select Date",
            style: TextStyle(fontSize: 21 , fontWeight:FontWeight.bold ),
          ),
          const SizedBox(width: 30),
             
              Icon(Icons.arrow_forward_ios_rounded ,),

          
            ],
          ),
          ),

          const SizedBox(height: 30),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(30, (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: GestureDetector(
                    onTap: () => selectContainer(index),
                    child: CustomContainer(
                      height: 130.0,
                      width: 100.0,
                      color: selectedIndex == index
                          ? AppColor.maincolor
                          : AppColor.textfieldcolor2,
                      borderRadius: BorderRadius.circular(20),
                      widget: Center(
                        child: Column(
                          children: [
                            const SizedBox(height: 25),
                            Text(
                              '${weekdays[index]}',
                              style: selectedIndex == index
                                  ? const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                                  : const TextStyle(fontSize: 20),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              '${index + 1}',
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          const SizedBox(height: 10),
          if (selectedIndex != -1) // Show only if an index is selected
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  // color: AppColor.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Shedule for : ',
                            style: TextStyle(fontSize: 20, ),
                          ),
                          Text(
                            '${weekdays[selectedIndex]}',
                            style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Text(
                            'Date : ',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            '${selectedIndex + 1}',
                            style: const TextStyle(fontSize: 20 ,fontWeight:FontWeight.bold ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const TimeText(
                            text: Text('06:00 AM'),
                          ),
                          SizedBox(width: 110,),
                          Container(
                            height: 50,
                            width: 210,
                            decoration: BoxDecoration(color: AppColor.maincolor,borderRadius: BorderRadius.circular(30)),
                            child: Center(child: Text('Warm Up Exercises | 6.00 Am')),
                            ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const TimeText(
                            text: Text('07:00 AM'),
                          ),
                          SizedBox(width: 30,),
                          Container(
                            height: 50,
                            width: 210,
                            decoration: BoxDecoration(color: AppColor.maincolor,borderRadius: BorderRadius.circular(30)),
                            child: Center(child: Text('Upper body Workout | 7.00 Am')),
                            ),
                        ],
                      ),
                      const SizedBox(height: 20),
                           Row(
                        children: [
                          const TimeText(
                            text: Text('08:00 AM'),
                          ),
                          SizedBox(width: 110,),
                          Container(
                            height: 50,
                            width: 210,
                            decoration: BoxDecoration(color: AppColor.maincolor,borderRadius: BorderRadius.circular(30)),
                            child: Center(child: Text('Abs Workout | 8.00 Am')),
                            ),
                        ],
                      ),
                      const SizedBox(height: 33),const TimeText(
                        text: Text('09:00 AM'),
                      ),
                      const SizedBox(height: 43),const TimeText(
                        text: Text('10:00 AM'),
                      ),
                      const SizedBox(height: 43),const TimeText(
                        text: Text('11:00 AM'),
                      ),
                      const SizedBox(height: 43),const TimeText(
                        text: Text('12:00 PM'),
                      ),
                      const SizedBox(height: 43),const TimeText(
                        text: Text('01:00 PM'),
                      ),
                      const SizedBox(height: 43),const TimeText(
                        text: Text('02:00 PM'),
                      ),
                      const SizedBox(height: 43),const TimeText(
                        text: Text('03:00 PM'),
                      ),
                      const SizedBox(height: 33),
                      Row(
                        children: [
                          const TimeText(
                            text: Text('04:00 PM'),
                          ),
                          SizedBox(width: 30,),
                          Container(
                            height: 50,
                            width: 210,
                            decoration: BoxDecoration(color: AppColor.maincolor,borderRadius: BorderRadius.circular(30)),
                            child: Center(child: Text('Lower body Workout | 4.00 Pm')),
                            ),
                        ],
                      ),
                      const SizedBox(height: 20),Row(
                        children: [
                          const TimeText(
                            text: Text('05:00 PM'),
                          ),
                          SizedBox(width: 110,),
                          Container(
                            height: 50,
                            width: 210,
                            decoration: BoxDecoration(color: AppColor.maincolor,borderRadius: BorderRadius.circular(30)),
                            child: Center(child: Text('legs Workout | 5.00 Pm')),
                            ),
                        ],
                      ),
                      const SizedBox(height: 30),const TimeText(
                        text: Text('06:00 PM'),
                      ),
                      const SizedBox(height: 43),const TimeText(
                        text: Text('07:00 PM'),
                      ),
                      const SizedBox(height: 43),const TimeText(
                        text: Text('08:00 PM'),
                      ),
                      const SizedBox(height: 43),const TimeText(
                        text: Text('09:00 PM'),
                      ),
                      const SizedBox(height: 43),const TimeText(
                        text: Text('10:00 PM'),
                      ),
                      const SizedBox(height: 43),const TimeText(
                        text: Text('11:00 PM'),
                      ),
                      const SizedBox(height: 43),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
