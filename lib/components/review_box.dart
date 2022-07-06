import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hamrakisan_widgets/components/outline_border_button.dart';
import 'package:hamrakisan_widgets/components/reusable_icon_button.dart';
import 'package:hamrakisan_widgets/constant.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewBox extends StatelessWidget {
  final String fullname;
  final double initialRating;
  final String reviewPara;
  final String date;

  ReviewBox({
    required this.fullname,
    required this.initialRating,
    required this.reviewPara,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.w,
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0.sm),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              fullname,
              style: kReviewName,
            ),
            SizedBox(
              height: 5.h,
            ),
            RatingBar.builder(
              itemSize: 15.h,
              initialRating: initialRating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              reviewPara,
              style: kReviewPara,
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OutlineBorderButton(
                  height: 32,
                  width: 100,
                  buttonText: Text(
                    'Disapprove',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 12.sp,
                      fontFamily: 'poppins',
                    ),
                  ),
                  buttonIcon: Icon(
                    Icons.thumb_down_alt_sharp,
                    color: Colors.red,
                    size: 15.sp,
                  ),
                  borderColor: Colors.red,
                ),
                SizedBox(
                  width: 10.w,
                ),
                OutlineBorderButton(
                  height: 32,
                  width: 100,
                  buttonText: Text(
                    'Approve',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 12.sp,
                      fontFamily: 'poppins',
                    ),
                  ),
                  buttonIcon: Icon(
                    Icons.thumb_up_alt_sharp,
                    color: Colors.green,
                    size: 15.sp,
                  ),
                  borderColor: Colors.green,
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              date,
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 10.sp,
                fontFamily: 'poppins',
              ),
            )
          ],
        ),
      ),
    );
  }
}
