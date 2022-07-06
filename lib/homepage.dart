import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hamrakisan_widgets/components/dotted_container.dart';
import 'package:hamrakisan_widgets/components/outline_border_button.dart';
import 'package:hamrakisan_widgets/components/reusable_buttons.dart';
import 'package:hamrakisan_widgets/components/reusable_icon_button.dart';
import 'package:hamrakisan_widgets/components/reusable_textfield.dart';
import 'package:hamrakisan_widgets/components/three_textfield.dart';
import 'package:hamrakisan_widgets/constant.dart';
import 'package:hamrakisan_widgets/homepage2.dart';

class HomePage extends StatefulWidget {
  static const String id = 'HomepageScreen';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ReusableTextField(
              hintText: 'textfield1',
              labelText: 'textfield1',
              onChanged: (value) {},
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.grey.shade600,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ReusableButtons(
              buttonText: Text(
                'Login',
                style: kButtonText.copyWith(
                  fontSize: 15.sp,
                  color: Colors.white,
                ),
              ),
              buttonHeight: 55,
              buttonWidth: 250,
              buttonColor: Colors.green,
            ),
            SizedBox(
              height: 20.h,
            ),
            ReusableIconButtons(
              buttonText: Text(
                '9813110577',
                style: kButtonText.copyWith(
                  color: Colors.white,
                  fontSize: 15.sp,
                ),
              ),
              buttonColor: Colors.green,
              buttonHeight: 50,
              buttonWidth: 160,
              buttonIcon: const Icon(
                Icons.phone_outlined,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ThreeTextfield(),
            SizedBox(
              height: 40.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Homepage2.id);
              },
              child: OutlineBorderButton(
                buttonIcon: Icon(
                  Icons.shopping_cart_sharp,
                  color: Colors.green,
                ),
                buttonText: Text(
                  'Order',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 14.sp,
                    fontFamily: 'poppins',
                  ),
                ),
                height: 45,
                width: 100,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            DottedContainer(),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'In Stock',
                  style: TextStyle(
                    color: Colors.grey.shade300,
                    fontSize: 18.sp,
                    fontFamily: 'poppins',
                  ),
                ),
                SizedBox(
                  width: 40.w,
                ),
                Switch(
                  value: isSwitch,
                  onChanged: (value) {
                    setState(() {
                      isSwitch = value;
                    });
                  },
                  activeTrackColor: Colors.grey.shade300,
                  activeColor: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
