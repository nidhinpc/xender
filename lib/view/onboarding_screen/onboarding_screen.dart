import 'package:flutter/material.dart';
import 'package:xender/utils/constants/color_constants.dart';
import 'package:xender/utils/constants/image_constants.dart';
import 'package:xender/view/bottom_nav_bar/bottonavbar.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Bottomnavbar(),
              ));
        },
        child: Container(
          decoration: BoxDecoration(
              color: ColorConstants.PRIMARY_COLOR,
              image: DecorationImage(
                  image: AssetImage(ImageConstants.XENDER_LOGO))),
        ),
      ),
    ));
  }
}
