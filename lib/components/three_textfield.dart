import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThreeTextfield extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 380.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          13.r,
        ),
      ),
      child: Stack(
        children: [
          Row(
            children: [
              TextfieldContainer(
                hintText: 'Minimum Order',
                keyboardType: TextInputType.number,
              ),
              TextfieldDivider(),
              TextfieldContainer(
                hintText: 'Price per unit',
                leftBottomBorder: 0,
                leftTopBorder: 0,
                keyboardType: TextInputType.number,
              ),
              TextfieldDivider(),
              TextfieldContainer(
                hintText: 'Unit',
                rightBottomBorder: 12,
                rightTopBorder: 12,
                leftBottomBorder: 0,
                leftTopBorder: 0,
                keyboardType: TextInputType.number,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TextfieldDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.grey.shade400,
          width: 1,
          height: 10.h,
        ),
        Container(
          color: Colors.grey.shade900,
          width: 0.5,
          height: 30.h,
        ),
        Container(
          color: Colors.grey.shade400,
          width: 1,
          height: 10.h,
        ),
      ],
    );
  }
}

class TextfieldContainer extends StatelessWidget {
  final String hintText;
  final int leftTopBorder;
  final int leftBottomBorder;
  final int rightTopBorder;
  final int rightBottomBorder;
  final TextInputType keyboardType;

  TextfieldContainer({
    required this.hintText,
    this.leftTopBorder = 12,
    this.leftBottomBorder = 12,
    this.rightTopBorder = 0,
    this.rightBottomBorder = 0,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 115.w,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: TextField(
          keyboardType: keyboardType,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'poppins',
            fontSize: 13.sp,
          ),
          cursorColor: Colors.black,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 12.sp,
              fontFamily: 'poppins',
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(leftTopBorder.r),
          bottomLeft: Radius.circular(leftBottomBorder.r),
          topRight: Radius.circular(rightTopBorder.r),
          bottomRight: Radius.circular(rightBottomBorder.r),
        ),
      ),
    );
  }
}
