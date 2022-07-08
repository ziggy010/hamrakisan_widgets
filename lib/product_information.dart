import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hamrakisan_widgets/homepage.dart';

class ProductInformation extends StatefulWidget {
  static const String id = 'productInformation';

  @override
  State<ProductInformation> createState() => _ProductInformationState();
}

class _ProductInformationState extends State<ProductInformation> {
  @override
  Widget build(BuildContext context) {
    bool importanceVisibility = false;
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Padding(
        padding: EdgeInsets.only(bottom: 20.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                constraints: BoxConstraints.expand(
                  height: 300.h,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'lib/images/mushroom.jpeg',
                      ),
                      fit: BoxFit.cover),
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 55,
                      left: 20,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, HomePage.id);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mushroom Farming',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.sp,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 5.h,
                      color: Colors.white,
                      width: 130.w,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'A mushroom or toadstool is the fleshy, spore-bearing fruiting body of a fungus, typically produced above ground, on soil, or on its food source. Toadstool generally denotes one poisonous to humans.The standard for the name "mushroom" is the cultivated white button mushroom, Agaricus bisporus; hence the word "mushroom" is most often applied to those fungi (Basidiomycota, Agaricomycetes) that have a stem (stipe), a cap (pileus), and gills (lamellae, sing. lamella) on the underside of the cap.',
                      style: TextStyle(
                        color: Colors.grey.shade200,
                        fontSize: 17.sp,
                        fontFamily: 'poppins',
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                height: 1.h,
                color: Colors.grey.shade600,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      importanceVisibility = true;
                      print('hello');
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Importance',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Visibility(
                        visible: false,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Importance',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.sp,
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Container(
                                height: 4.h,
                                width: 150.w,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                'Mushrooms are a low-calorie food that packs a nutritional punch. Loaded with many health-boosting vitamins, minerals, and antioxidants, they’ve long been recognized as an important part of any diet. For instance, mushrooms raised with exposure to ultraviolet light are a good source of Vitamin D, an important component in bone and immune health. Crimini mushrooms are a particularly excellent source of zinc, an essential trace element. Zinc is a vital nutrient for the immune system and is also needed for ensuring optimal growth in infants and children. ',
                                style: TextStyle(
                                  color: Colors.grey.shade200,
                                  fontSize: 17.sp,
                                  fontFamily: 'poppins',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 1.h,
                color: Colors.grey.shade600,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: Column(
                  children: [
                    Text(
                      'Season and suitable Land',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 1.h,
                color: Colors.grey.shade600,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
