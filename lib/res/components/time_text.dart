import 'package:flutter/material.dart';

class TimeText extends StatelessWidget {

final Widget? text;

  const TimeText({super.key , this .text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: text,
    );
  }
}