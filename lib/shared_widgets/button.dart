import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/color_manager.dart';

class CustomElevated extends StatelessWidget {
  final String text;
  final Color textColor, bgColor;
  final double hSize, wSize, fontSize;
  final VoidCallback press;

  const CustomElevated({
    Key? key,
    required this.text,
    this.textColor = Colors.white,
    this.bgColor = const Color(0xffFF6EA1),
    this.hSize = 45,
    this.wSize = 150,
    this.fontSize = 20,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          elevation: 0.0,
          shadowColor: ColorManager.textColor,
          fixedSize: Size(wSize.w, hSize.w)),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(color: textColor, fontSize: fontSize.sp),
      ),
    );
  }
}
