import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReusableIconButtons extends StatelessWidget {
  final Widget buttonText;
  final int buttonHeight;
  final int buttonWidth;
  final Widget buttonIcon;
  final Color buttonColor;
  final VoidCallback onTap;

  ReusableIconButtons({
    required this.buttonText,
    required this.buttonHeight,
    required this.buttonWidth,
    required this.buttonIcon,
    required this.buttonColor,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: buttonHeight.h,
        width: buttonWidth.h,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(
            15.r,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buttonIcon,
              SizedBox(
                width: 10.h,
              ),
              buttonText,
            ],
          ),
        ),
      ),
    );
  }
}
