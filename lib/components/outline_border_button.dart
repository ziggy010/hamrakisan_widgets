import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutlineBorderButton extends StatelessWidget {
  final int height;
  final int width;
  final Color borderColor;
  final Text buttonText;
  final Icon buttonIcon;

  OutlineBorderButton({
    required this.height,
    required this.width,
    this.borderColor = Colors.green,
    required this.buttonText,
    required this.buttonIcon,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: width.w,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonIcon,
            buttonText,
          ],
        ),
      ),
    );
  }
}
