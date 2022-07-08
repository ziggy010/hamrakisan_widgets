import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hamrakisan_widgets/components/hot_products.dart';
import 'package:hamrakisan_widgets/components/review_box.dart';
import 'package:hamrakisan_widgets/components/video_desc.dart';
import 'package:hamrakisan_widgets/homepage3.dart';
import 'package:hamrakisan_widgets/homepage4.dart';

class Homepage2 extends StatelessWidget {
  static const String id = 'Homepage2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Homepage3.id);
              },
              child: CircleAvatar(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image.asset(
                    'lib/images/profile.png',
                  ),
                ),
                radius: 40,
                backgroundColor: Colors.lightGreen,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Homepage4.id);
              },
              child: HotProducts(),
            ),
          ],
        ),
      ),
    );
  }
}
