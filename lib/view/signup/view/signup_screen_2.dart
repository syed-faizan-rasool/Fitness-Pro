import 'package:fitness_pro/view/signup/view/signup_screen_3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fitness_pro/res/components/textfield.dart';
import 'package:fitness_pro/res/constants/colors.dart';

class SignupScreen2 extends StatefulWidget {
  SignupScreen2({super.key});

  @override
  State<SignupScreen2> createState() => _SignupScreen2State();
}

class _SignupScreen2State extends State<SignupScreen2> {
  TextEditingController genderController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      setState(() {
        dobController.text = "${pickedDate.toLocal()}".split(' ')[0];
      });
    }
  }

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
                    color: Color.fromARGB(255, 247, 247, 247),
                  ),
                ),
                Center(
                  child: Image.asset(
                    'assets/fitness app/images/fitness 6.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Get.height * 0.03),
                    Center(
                      child: Text(
                        'Let’s complete your profile',
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: AppColor.black),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.02),
                    Center(
                      child: Text(
                        'It will help us to know more about you!',
                        style: TextStyle(fontSize: 15, color: AppColor.black),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.05),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 253, 247, 247),
                      ),
                      child: Column(
                        children: [
                          CustomTextField(
                            controller: genderController,
                            labelText: 'Choose Gender',
                            prefixIcon: Icons.person_2_rounded,
                            suffixIcon: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                icon: Icon(Icons.arrow_drop_down),
                                items: [
                                  DropdownMenuItem(
                                    child: Text('Male'),
                                    value: 'Male',
                                  ),
                                  DropdownMenuItem(
                                    child: Text('Female'),
                                    value: 'Female',
                                  ),
                                ],
                                onChanged: (value) {
                                  genderController.text = value!;
                                  print('Selected: $value');
                                },
                              ),
                            ),
                            readOnly: true, fillColor: AppColor.white,
                          ),
                          SizedBox(height: Get.height * 0.02),
                          InkWell(
                            onTap: () => _selectDate(context),
                            child: IgnorePointer(
                              child: CustomTextField(
                                readOnly: true,
                                controller: dobController,
                                labelText: "Date of Birth",
                                prefixIcon: Icons.calendar_today_outlined,
                                fillColor: AppColor.white,
                              ),
                            ),
                          ),
                          SizedBox(height: Get.height * 0.02),
                          Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child: CustomTextField(
                                  controller: weightController, 
                                  labelText: "Your Weight",
                                  prefixIcon: Icons.now_widgets_sharp,
                                  fillColor: AppColor.white,
                                  ),
                              ),
                          SizedBox(width: Get.width * 0.02),
                          Expanded(
                            child: Container(
                              height: 70,
                              width: 50,
                              decoration: BoxDecoration(
                                color: AppColor.maincolor,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Text('KG',style: TextStyle(fontSize: 20,color: AppColor.white),),
                              ),
                            ),
                          )

                            ],
                          ),
                           SizedBox(height: Get.height * 0.01),
                          Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child: CustomTextField(
                                  controller: heightController, 
                                  labelText: "Your Height",
                                  prefixIcon: Icons.height_sharp,
                                  fillColor: AppColor.white,
                                  ),
                              ),
                          SizedBox(width: Get.width * 0.02),
                          Expanded(
                            child: Container(
                              height: 70,
                              width: 50,
                              decoration: BoxDecoration(
                                color: AppColor.maincolor,
                                borderRadius: BorderRadius.circular(30),
                                
                              ),
                              child: Center(
                                child: Text('Cm',style: TextStyle(fontSize: 20,color: AppColor.white),),
                              ),
                            ),
                          )

                            ],
                          ),
                          SizedBox(height: Get.height * 0.03),

 ElevatedButton(
              onPressed: () {
Get.to(()=>SignupScreen3());
              } ,
              child: const Text(
                'Next',
                style: TextStyle(color: AppColor.white, fontSize: 19),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.maincolor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 110, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),

                        ],
                      ),
                    ),
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
