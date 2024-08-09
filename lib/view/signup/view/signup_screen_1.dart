
import 'package:fitness_pro/res/components/textfield.dart';
import 'package:fitness_pro/res/constants/colors.dart';
import 'package:fitness_pro/view/login/view/loginscreen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpScreen1 extends StatefulWidget {
  @override
  State<SignUpScreen1> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen1> {
  final TextEditingController _firstnameController = TextEditingController();

  final TextEditingController _lastnameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  void _signUp(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', _emailController.text);
    await prefs.setString('password', _passwordController.text);

    // After successful sign up, navigate to login screen
    Get.to(()=>LoginScreen());
    print('Stored email: ${prefs.getString('email')}');
print('Stored Password: ${prefs.getString('password')}');
  }

   bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: Get.height*0.03,),
              const Text('Hey there,',style: TextStyle(fontSize: 20),),
              SizedBox(height: Get.height*0.001,),
              const Text('Create an Account',style: TextStyle(fontSize: 27 , fontWeight:FontWeight.w700 ),),
              SizedBox(height: Get.height*0.05,),
          
              CustomTextField(
                  labelText: 'First Name',
                  prefixIcon: Icons.person, 
                  fillColor: AppColor.textfieldcolor2,
                  controller: _firstnameController, ),
              const SizedBox(height: 20.0),
              CustomTextField(
                labelText: 'Last Name',
                prefixIcon: Icons.person, fillColor: AppColor.textfieldcolor2,
                controller: _lastnameController,
              ),
              const SizedBox(height: 20.0),
              CustomTextField(
                  labelText: 'Email',
                  prefixIcon: Icons.email, fillColor: AppColor.textfieldcolor2,
                  controller: _emailController,),
               const SizedBox(height: 20.0),
              CustomTextField(
                  labelText: 'Password',
                  prefixIcon: Icons.lock, fillColor: AppColor.textfieldcolor2, 
                  controller: _passwordController,),
              const SizedBox(height: 20.0),
              Row(
                children: [
                  Checkbox(
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                        activeColor: AppColor.maincolor,
                      ),
          
                  const Expanded(child: Text('By continuing you accept our Privacy Policy and Term of Use')),
                  ]
                  ),
              SizedBox(height: Get.height*0.09,),
          
              ElevatedButton(
                onPressed: () => _signUp(context),
                child: const Text(
                  'Register',
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
              SizedBox(height: Get.height*0.01,),
              const Row(
            children: [
              Expanded(
                child: Divider(
          color: AppColor.black,
          // height: 20,
          thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('Or',style: TextStyle(fontSize: 20),),
              ),
              Expanded(
                child: Divider(
          color: AppColor.black,
          // height: 20,
          thickness: 1,
                ),
              ),
            ],
          ),
              SizedBox(height: Get.height*0.02,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(width: Get.width*0.003,),
                  InkWell(
                    onTap: (){
                      showDialog(
                context: context,
                builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Service not available'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
                },
              );
                    },
                    child: CircleAvatar(
                      child: Image.asset("assets/fitness app/images/google.png" , height: 150,width: 150,),
                    radius: 35,
                    ),
                  ),
                    CircleAvatar(
                    child: Image.asset("assets/fitness app/images/facebook.png" , height: 150,width: 150,),
                  radius: 35,
                  ),
                  SizedBox(width: Get.width*0.003,),
          
                ],
              ),
              SizedBox(height: Get.height*0.003,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?  '),
                  SizedBox(
                    height: Get.height * 0.11,
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(() => LoginScreen());
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            color: AppColor.maincolor,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColor.maincolor,
                            fontSize: 17),
                      )),
                ],
              )
          
           ]
          ),
        ),),
    );
    
  }
}
