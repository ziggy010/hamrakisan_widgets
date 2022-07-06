import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HotProducts extends StatelessWidget {
  const HotProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 180.h,
          width: 260.w,
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(12.r),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('lib/images/farming4.jpeg'),
            ),
          ),
        ),
        Positioned(
          bottom: 1,
          child: Container(
            child: Center(
              child: Text(
                'Amrit enterprises',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontFamily: 'poppins',
                ),
              ),
            ),
            height: 30.h,
            width: 260.w,
            decoration: BoxDecoration(
              color: Color.fromARGB(105, 9, 236, 9),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12.r),
                bottomRight: Radius.circular(12.r),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
