
// import 'package:fitness_pro/res/constants/colors.dart';
// import 'package:fitness_pro/res/constants/fonts.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class CustomDesignCard extends StatelessWidget {
//   final String imgName;
//   final String heading;
//   final String baseLine;
//   final Color? backgroundColor;
//   final Color? iconColor;
//   final Color? borderColor;
//   final Color? dividerColor;
//   final bool? isLoading;
//   final double? width;

//   const CustomDesignCard({
//     super.key,
//     required this.imgName,
//     required this.heading,
//     required this.baseLine,
//     this.backgroundColor,
//     this.iconColor,
//     this.borderColor,
//     this.dividerColor,
//     this.isLoading,
//     this.width,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: width ?? Get.width,
//       decoration: BoxDecoration(
//         color: AppColor.maincolor,
//         borderRadius: BorderRadius.circular(12.0),
//         border: Border.all(
//           color: borderColor ?? AppColor.secondaryTheme,
//           width: 1,
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: AppColor.black.withOpacity(0.1),
//             spreadRadius: 2,
//             blurRadius: 5,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Card(
//         color: backgroundColor ?? AppColor.white,
//         elevation: 0,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12.0),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               isLoading == true
//                   ? const LinearProgressIndicator()
//                   : Image.asset(
//                       'assets/fitness/images/$imgName.png',
//                       height: 50.0,
//                       width: 100.0,
//                     ),
//               Text(
//                 heading,
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: CustomFontSize.extraLarge(context),
//                   fontWeight: FontWeight.bold,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 8.0),
//               Column(
//                 children: [
//                   Text(
//                     baseLine,
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: CustomFontSize.large(context),
//                       fontWeight: FontWeight.bold,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                   Divider(
//                       color: dividerColor ?? AppColor.secondaryTheme,
//                       thickness: 2),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:fitness_pro/res/constants/colors.dart';

class CardDesign extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final Image? image;

  const CardDesign({
    super.key,
    this.title,
    this.icon,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          children: [
            if (image != null)
              Positioned.fill(
                child: image!,
              ),
            Container(
              decoration: const BoxDecoration(
                // color: Colors.black.withOpacity(0.3), // Add a slight overlay for better visibility of text and button
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (icon != null)
                      Icon(
                        icon,
                        size: 50.0,
                        color: Colors.white,
                      ),
                    const SizedBox(height: 8.0),
                    // Text(
                    //   title,
                    //   style: const TextStyle(
                    //     color: Colors.white,
                    //     fontSize: 18.0,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    //   textAlign: TextAlign.center,
                    // ),
                    const SizedBox(height: 8.0),
                   
                 ElevatedButton(
                      onPressed: () {
                        // Handle button press
                      },
                      style:  const ButtonStyle(backgroundColor:WidgetStatePropertyAll(AppColor.maincolor)),
                      child: const Text('View More',style:TextStyle(color: AppColor.black) ,),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}









