import 'dart:async';

import 'package:fitness_pro/res/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Notifications',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: AppColor.black),),
    backgroundColor: AppColor.maincolor2,
     centerTitle: true,
     actions: [
       InkWell(
        onTap: () {
          CircularProgressIndicator;
          // ignore: avoid_print
          Timer(const Duration(seconds: 5), () => print('Timer finished'));
        },
         child: Container(
          height: 40,
          width: 30,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(9),
          color: Color.fromARGB(255, 170, 209, 245),
          ),
           child: 
            const Icon(Icons.more_horiz_outlined),
         ),
       ),
         SizedBox(width: Get.width*0.05,)

     ],
     
      ),
      body: Column(
        children: [
          SizedBox(
height: Get.height*0.02,
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/fitness app/images/meal1.png'),
              radius: 40,
            ),
            title: Text('Hey, it’s time for lunch',style:TextStyle(fontWeight: FontWeight.bold)) ,
            subtitle: Text('About 1 minutes ago'),
                      trailing:Icon(Icons.more_vert_outlined),
                      

            
          ), 
          SizedBox(height: Get.height*0.02,),
  const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/fitness app/images/lower body.jpg'),
              radius: 40,
            ),
            title: Text('Don’t miss your lowerbody workout',style:TextStyle(fontWeight: FontWeight.bold)) ,
            subtitle: Text('About 3 hours ago'),
                       trailing:Icon(Icons.more_vert_outlined),

          ), 
          SizedBox(height: Get.height*0.02,),const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/fitness app/images/meal2.png'),
              radius: 40,
            ),
            title: Text('Hey, let’s add some meals for your b..',style:TextStyle(fontWeight: FontWeight.bold)) ,
            subtitle: Text('About 3 hours ago'),
                        trailing:Icon(Icons.more_vert_outlined),

            
          ), 
          SizedBox(height: Get.height*0.02,),const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/fitness app/images/abs.jpg'),
              radius: 40,
            ),
            title: Text('Congratulations, You have finished A..',style:TextStyle(fontWeight: FontWeight.bold)) ,
            subtitle: Text('29 May'),
                       trailing:Icon(Icons.more_vert_outlined),

            
          ), 
          SizedBox(height: Get.height*0.02,),const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/fitness app/images/meal3.png'),
              radius: 40,
            ),
            title: Text('Hey, it’s time for lunch',style:TextStyle(fontWeight: FontWeight.bold)) ,
            subtitle: Text('8 April'),
            trailing:Icon(Icons.more_vert_outlined),
            
          ), 
          SizedBox(height: Get.height*0.02,),const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/fitness app/images/lower body.jpg'),
              radius: 40,
            ),
            title: Text('Ups, You have missed your Lowerbo...',style:TextStyle(fontWeight: FontWeight.bold)) ,
            subtitle: Text('3 April'),
            trailing:Icon(Icons.more_vert_outlined)
           
          ), 
          SizedBox(height: Get.height*0.02,),
        ],
      ),
    );
  }
}