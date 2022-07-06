import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hamrakisan_widgets/components/hot_products.dart';
import 'package:hamrakisan_widgets/components/review_box.dart';
import 'package:hamrakisan_widgets/components/video_desc.dart';
import 'package:hamrakisan_widgets/homepage3.dart';

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
              child: ReviewBox(
                fullname: 'Risab Tajale',
                initialRating: 4,
                reviewPara:
                    'One of the promising farm in the country, fast deliveries love the service. The products are fresh and the price is affordable.',
                date: 'May 20, 2020',
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            HotProducts(),
          ],
        ),
      ),
    );
  }
}
