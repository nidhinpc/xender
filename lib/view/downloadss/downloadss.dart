import 'package:flutter/material.dart';
import 'package:xender/utils/constants/color_constants.dart';

class Downloadss extends StatelessWidget {
  const Downloadss({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.BACKGROUND_COLOR,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.video_collection_outlined,
              color: Colors.grey,
              size: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "No Downloads",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
