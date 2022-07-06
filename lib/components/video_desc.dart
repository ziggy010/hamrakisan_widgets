import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

import 'package:hamrakisan_widgets/constant.dart';

class VideoDesc extends StatelessWidget {
  String? heading = 'Error';
  String? views = '000';
  String? image = 'lib/images/farming1.jpeg';

  VideoDesc({
    this.heading,
    this.views,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            child: FittedBox(
              child: Image.asset(
                image!,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.grey.shade900,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  height: 70,
                  width: double.infinity,
                  color: Colors.grey[850],
                  child: const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Description',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        heading!,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'poppins',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                'lib/images/farming1.jpeg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Hamra Kishan',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'poppins'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text('864', style: kVideoDescText),
                            Text('Likes', style: kVideoDescSubText),
                          ],
                        ),
                        Column(
                          children: [
                            Text(views!, style: kVideoDescText),
                            Text('Views', style: kVideoDescSubText),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Jun 8 ', style: kVideoDescText),
                            Text('2022', style: kVideoDescSubText),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        height: 1,
                        color: Colors.grey.shade800,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 20),
                      child: Text(
                        'Agriculture or farming is the practice of cultivating plants and livestock. Agriculture was the key development in the rise of sedentary human civilization, whereby farming of domesticated species created food surpluses that enabled people to live in cities. The history of agriculture began thousands of years ago.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'poppins',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
