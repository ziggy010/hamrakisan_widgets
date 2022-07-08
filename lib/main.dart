import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hamrakisan_widgets/homepage.dart';
import 'package:hamrakisan_widgets/homepage2.dart';
import 'package:hamrakisan_widgets/homepage3.dart';
import 'package:hamrakisan_widgets/homepage4.dart';
import 'package:hamrakisan_widgets/product_information.dart';
import 'package:hamrakisan_widgets/reviewpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: HomePage.id,
        routes: {
          HomePage.id: (context) => HomePage(),
          Homepage2.id: (context) => Homepage2(),
          Homepage3.id: (context) => Homepage3(),
          Homepage4.id: (context) => Homepage4(),
          ReviewPage.id: (context) => ReviewPage(),
          ProductInformation.id: (context) => ProductInformation(),
        },
      ),
      designSize: const Size(390, 844),
    );
  }
}
