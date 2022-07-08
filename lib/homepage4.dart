import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hamrakisan_widgets/constant.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'components/cancelled_container.dart';
import 'components/delivered_container.dart';
import 'components/pending_container.dart';

class Homepage4 extends StatefulWidget {
  static const String id = 'homepage4';

  @override
  State<Homepage4> createState() => _Homepage4State();
}

class _Homepage4State extends State<Homepage4> {
  bool isOnPending = true;

  bool isOnDelivered = false;

  bool isOnCancelled = false;

  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Container(
        padding: EdgeInsets.only(
          top: 70.h,
          right: 30.w,
          left: 30.w,
          bottom: 30.h,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 40.h,
                  width: 110.w,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color:
                            isOnPending ? Colors.green : Colors.grey.shade300,
                        width: 3,
                      ),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(0);
                    },
                    child: Text(
                      'Pending',
                      style: kStatusText.copyWith(
                        color:
                            isOnPending ? Colors.green : Colors.grey.shade300,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  height: 40.h,
                  width: 110.w,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color:
                            isOnDelivered ? Colors.green : Colors.grey.shade300,
                        width: 3,
                      ),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(1);
                    },
                    child: Text(
                      'Delivered',
                      style: kStatusText.copyWith(
                        color:
                            isOnDelivered ? Colors.green : Colors.grey.shade300,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  height: 40.h,
                  width: 110.w,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color:
                            isOnCancelled ? Colors.green : Colors.grey.shade300,
                        width: 3,
                      ),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: Text(
                      'Cancelled',
                      style: kStatusText.copyWith(
                        color:
                            isOnCancelled ? Colors.green : Colors.grey.shade300,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: Container(
                child: Stack(
                  children: [
                    PageView(
                      controller: _controller,
                      onPageChanged: (value) {
                        setState(() {
                          if (value == 0) {
                            isOnPending = !isOnPending;
                            isOnDelivered = false;
                            isOnCancelled = false;
                          } else if (value == 1) {
                            isOnPending = false;
                            isOnDelivered = !isOnDelivered;
                            isOnCancelled = false;
                          } else if (value == 2) {
                            isOnPending = false;
                            isOnDelivered = false;
                            isOnCancelled = !isOnCancelled;
                          }
                        });
                      },
                      children: [
                        PendingContainer(),
                        DeliveredContainer(),
                        CancelledContainer(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
