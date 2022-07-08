import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hamrakisan_widgets/components/reusable_textfield.dart';
import 'package:hamrakisan_widgets/components/review_box.dart';

class ReviewPage extends StatelessWidget {
  static const String id = 'ReivewPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        elevation: 0,
        title: Text(
          'Farm Reviews',
          style: TextStyle(
            fontFamily: 'poppins',
            fontSize: 15.sp,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ReusableTextField(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey.shade300,
                  size: 30.sp,
                ),
                hintText: 'Search',
                labelText: 'Search',
                onChanged: (value) {},
              ),
              SizedBox(
                height: 20.h,
              ),
              ReviewBox(
                fullname: 'Rajesh Sharma',
                initialRating: 5,
                reviewPara:
                    'One of the promising farm in the country, fast deliveries love the serive. The products are fresh and the price is affordable.',
                date: 'May 20, 2020',
              ),
              ReviewBox(
                fullname: 'Bir Bikram',
                initialRating: 3,
                reviewPara:
                    'She always speaks to him in a loud voice. Behind the window was a reflection that only instilled fear. The father died during childbirth.',
                date: 'May 20, 2020',
              ),
              ReviewBox(
                fullname: 'Bikram Bir',
                initialRating: 5,
                reviewPara:
                    'One of the promising farm in the country, fast deliveries love the serive. The products are fresh and the price is affordable.',
                date: 'May 20, 2020',
              ),
              ReviewBox(
                fullname: 'Bikram Pandey',
                initialRating: 5,
                reviewPara:
                    'One of the promising farm in the country, fast deliveries love the serive. The products are fresh and the price is affordable.',
                date: 'May 20, 2020',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
