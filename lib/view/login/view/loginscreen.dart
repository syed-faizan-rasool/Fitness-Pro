import 'package:fitness_pro/res/components/textfield.dart';
import 'package:fitness_pro/res/constants/colors.dart';
import 'package:fitness_pro/view/signup/view/signup_screen_1.dart';
import 'package:fitness_pro/view/splashscreen/view/welcome_screen_1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

   void _login(BuildContext context) async {
  print('Login Button Pressed');

  try {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? storedemail = prefs.getString('email');
    String? storedPassword = prefs.getString('password');

    print('Stored email: $storedemail');
    print('Stored Password: $storedPassword');

    if (storedemail != null && storedPassword != null &&
        storedemail == _emailController.text &&
        storedPassword == _passwordController.text) {
      // If credentials match, navigate to home screen
      print('Login Successful');
      Get.to(  WelcomeScreen1());
    } else {
      // If credentials don't match, show error message
      print('Login Failed');
      Get.snackbar(
        'Error',
        'Invalid username or password',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  } catch (e) {
    // Handle any exceptions
    print('Login Error: $e');
    Get.snackbar(
      'Error',
      'An error occurred during login',
      backgroundColor: Colors.red,
      colorText: Colors.white,
    );
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
               SizedBox(height: Get.height*0.07),
          
                        const Center(child: Text('Hey there,',style: TextStyle(fontSize: 17,color: AppColor.black,),)),
               SizedBox(height: Get.height*0.005),
            const Center(child: Text('Welcome Back',style: TextStyle(fontSize: 27,color: AppColor.black,fontWeight: FontWeight.w700),)),
               SizedBox(height: Get.height*0.03),
          
              CustomTextField(
                  labelText: 'Email',
                  prefixIcon: Icons.person_2_rounded, fillColor: AppColor.textfieldcolor2,
                  controller: _emailController,),
              const SizedBox(height: 20.0),
              CustomTextField(
                  labelText: 'Password',
                  prefixIcon: Icons.password_rounded, fillColor: AppColor.textfieldcolor2,
                  controller: _passwordController,),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Forgot your password?',style: TextStyle(decoration: TextDecoration.underline),)
                ],
              ),
               SizedBox(height: Get.height*0.27),
                ElevatedButton(
                onPressed: () => _login(context),
                child:
                    const Text(
                      'Login',
                      style: TextStyle(fontSize: 19, color: Colors.white),
                    
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.maincolor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 110, vertical: 17),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
          SizedBox(height: Get.height*0.019,),
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
                
               
             
              SizedBox(
                height: Get.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Do,nt have an account?  '),
                  SizedBox(
                    height: Get.height * 0.1,
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(() => SignUpScreen1());
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(
                            color: AppColor.maincolor,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColor.maincolor,
                            fontSize: 17),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
