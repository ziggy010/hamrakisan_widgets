import 'package:flutter/material.dart';
import 'package:hamrakisan_widgets/components/video_desc.dart';

class Homepage3 extends StatelessWidget {
  static const String id = 'homepage3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: VideoDesc(
        heading: 'Video 1',
        views: '8888',
        image: 'lib/images/farming1.jpeg',
      ),
    );
  }
}
