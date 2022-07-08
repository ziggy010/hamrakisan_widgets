import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeliveredContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            PendingContentContainer(
              fullname: 'Joe Tribbiani',
              orderedItems: 'Tomatoes, Spanich, Mushroom',
              totalPrice: '4840',
              orderedDate: 'Apr 03, 2020',
              deliverDate: 'Apr 10, 2020',
            ),
            PendingContentContainer(
              fullname: 'Nacho Varga',
              orderedItems: 'Mushrooms, Tomatoes',
              totalPrice: '11,280',
              orderedDate: 'Apr 03, 2020',
              deliverDate: 'Apr 10, 2020',
            ),
            PendingContentContainer(
              fullname: 'Joe Tribbiani',
              orderedItems: 'Tomatoes, Spanich, Mushroom',
              totalPrice: '4840',
              orderedDate: 'Apr 03, 2020',
              deliverDate: 'Apr 10, 2020',
            ),
            PendingContentContainer(
              fullname: 'Joe Tribbiani',
              orderedItems: 'Tomatoes, Spanich, Mushroom',
              totalPrice: '4840',
              orderedDate: 'Apr 03, 2020',
              deliverDate: 'Apr 10, 2020',
            ),
          ],
        ),
      ),
    );
  }
}

class PendingContentContainer extends StatelessWidget {
  const PendingContentContainer({
    Key? key,
    required this.fullname,
    required this.orderedItems,
    required this.totalPrice,
    required this.orderedDate,
    required this.deliverDate,
  }) : super(key: key);

  final String fullname;
  final String orderedItems;
  final String totalPrice;
  final String orderedDate;
  final String deliverDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Container(
        width: 320.w,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              height: 60.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    fullname,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset(
                    'lib/images/tick.png',
                    height: 30.h,
                    color: Color.fromARGB(255, 16, 164, 21),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          orderedItems,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontFamily: 'poppins',
                          ),
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Total   ',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 13.sp,
                            fontFamily: 'poppins',
                          ),
                          children: [
                            TextSpan(
                              text: 'Rs. $totalPrice',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 18.sp,
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ordered on',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 14.sp,
                          fontFamily: 'poppins',
                        ),
                      ),
                      Text(
                        orderedDate,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontFamily: 'poppins',
                          // fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivered on',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 14.sp,
                          fontFamily: 'poppins',
                        ),
                      ),
                      Text(
                        deliverDate,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontFamily: 'poppins',
                          // fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
