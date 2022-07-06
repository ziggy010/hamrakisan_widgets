import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:hamrakisan_widgets/components/reusable_buttons.dart';
import 'package:hamrakisan_widgets/constant.dart';

class DottedContainer extends StatelessWidget {
  const DottedContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: Colors.grey.shade400,
      dashPattern: [6, 6, 6, 6],
      strokeWidth: 2,
      child: Container(
        height: 170.h,
        width: 350.w,
        decoration: BoxDecoration(
          color: Colors.grey.shade600,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.upload_file_sharp,
              color: Colors.green.shade300,
              size: 70.sm,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Min 3 to maximum of 6 photos.',
              style: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 14.sp,
                fontFamily: 'poppins',
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            ReusableButtons(
              buttonText: Text(
                'Browse',
                style: kButtonText.copyWith(
                  color: Colors.white,
                ),
              ),
              buttonHeight: 35,
              buttonWidth: 90,
              buttonColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
