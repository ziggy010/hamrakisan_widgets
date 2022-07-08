import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CancelledContainer extends StatelessWidget {
  const CancelledContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(children: [
          CancelledContentContainer(
            fullname: 'Joe Tribbiani',
            orderedItems: 'Tomatoes, Spanich, Mushrooms',
            totalPrice: '4,840',
            status: 'Cancelled by the User',
            statusColor: Colors.red,
            orderDate: 'Apr 03 2020',
          ),
          CancelledContentContainer(
            fullname: 'Joe Tribbiani',
            orderedItems: 'Tomatoes, Spanich, Mushrooms',
            totalPrice: '4,840',
            status: 'Rejected by Farm',
            statusColor: Color.fromARGB(255, 182, 164, 5),
            orderDate: 'Apr 10 2020',
          ),
          CancelledContentContainer(
            fullname: 'Joe Tribbiani',
            orderedItems: 'Tomatoes, Spanich, Mushrooms',
            totalPrice: '4,840',
            status: 'Cancelled by the user',
            statusColor: Colors.red,
            orderDate: 'Apr 03 2020',
          ),
          CancelledContentContainer(
            fullname: 'Joe Tribbiani',
            orderedItems: 'Tomatoes, Spanich, Mushrooms',
            totalPrice: '4,840',
            status: 'Rejected by Farm',
            statusColor: Color.fromARGB(255, 182, 164, 5),
            orderDate: 'Apr 10 2020',
          ),
        ]),
      ),
    );
  }
}

class CancelledContentContainer extends StatelessWidget {
  const CancelledContentContainer({
    Key? key,
    required this.fullname,
    required this.orderedItems,
    required this.totalPrice,
    required this.status,
    required this.statusColor,
    required this.orderDate,
  }) : super(key: key);

  final String fullname;
  final String orderedItems;
  final String totalPrice;
  final String status;
  final Color statusColor;
  final String orderDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Container(
        width: 330.w,
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
                    'lib/images/remove.png',
                    height: 30.h,
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
                        status,
                        style: TextStyle(
                          color: statusColor,
                          fontSize: 14.sp,
                          fontFamily: 'poppins',
                        ),
                      ),
                      Text(
                        orderDate,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontFamily: 'poppins',
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
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
