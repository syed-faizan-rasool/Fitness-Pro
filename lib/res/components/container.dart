
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomContainer extends StatelessWidget {
  var height ;
  var width;
  Color? color;
  Widget? widget;
  BoxBorder? border;
  BorderRadiusGeometry? borderRadius;
  



   CustomContainer(
    {
      super.key,
      this.height,
      this.width,
      this.color,
      this.widget,
      this.border, 
      this.borderRadius
      }
      );

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius,
        border: border,
      ),
      child: widget,

    );
  }
}