import 'package:fitness_pro/res/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? labelText;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final bool readOnly;
  final BorderRadius? borderRadius;


  const CustomTextField({
    super.key,
    required this.controller,
     this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.readOnly = false,
    Color? fillColor,
    this.borderRadius,

  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      readOnly: readOnly,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon,color: AppColor.maincolor,) : null,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}
