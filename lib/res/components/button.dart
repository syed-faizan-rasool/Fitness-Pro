

import 'package:fitness_pro/res/constants/colors.dart';
import 'package:fitness_pro/res/constants/fonts.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final bool isLoading;
  final double? width;
  final double? height;
  final Color? color;

  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
    required this.isLoading,
    this.width,
    this.height,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: isLoading ? null : onPressed,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return Colors.grey;
              }
              return color ?? AppColor.primaryTheme;
            },
          ),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: isLoading
            ? const SizedBox(
                width: double.infinity,
                height: 60,
                child: Center(child: CircularProgressIndicator()))
            : SizedBox(
                width: double.infinity,
                height: 60,
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    title,
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.bold,
                      color: AppColor.white,
                      fontSize: CustomFontSize.small(context),
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
