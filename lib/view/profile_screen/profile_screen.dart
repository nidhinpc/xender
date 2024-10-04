import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:xender/utils/constants/color_constants.dart';
import 'package:xender/utils/constants/image_constants.dart';
import 'package:xender/view/dummydb.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        color: ColorConstants.BACKGROUND_COLOR,
        child: Stack(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  color: ColorConstants.SECONDARY_COLOR,
                  borderRadius: BorderRadius.circular(30)),
            ),
            Positioned(
              top: 60,
              left: 20,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: ColorConstants.PRIMARY_COLOR,
                    child: CircleAvatar(
                      // backgroundColor: ColorConstants.SECONDARY_COLOR,
                      radius: 37,
                      backgroundImage: AssetImage(
                        ImageConstants.MyProfile,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "MyProfile",
                    style:
                        TextStyle(color: ColorConstants.GREYMAIN, fontSize: 25),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Icon(
                    Icons.message_rounded,
                    color: Colors.white,
                    size: 30,
                  )
                ],
              ),
            ),
            Positioned(
              top: 150,
              left: 20,
              right: 20,
              child: Container(
                height: 80,
                width: 300,
                color: ColorConstants.BACKGROUND_COLOR,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "3",
                              style: TextStyle(color: ColorConstants.GREYMAIN),
                            ),
                            Text(
                              "Sent",
                              style: TextStyle(color: ColorConstants.GREYMAIN),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Text(
                              "3",
                              style: TextStyle(color: ColorConstants.GREYMAIN),
                            ),
                            Text(
                              "Received",
                              style: TextStyle(color: ColorConstants.GREYMAIN),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Text(
                              "3",
                              style: TextStyle(color: ColorConstants.GREYMAIN),
                            ),
                            Text(
                              "People",
                              style: TextStyle(color: ColorConstants.GREYMAIN),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Text(
                              "6.61",
                              style: TextStyle(color: ColorConstants.GREYMAIN),
                            ),
                            Text(
                              "GB",
                              style: TextStyle(color: ColorConstants.GREYMAIN),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 230,
              left: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Contact us",
                    style: TextStyle(color: ColorConstants.GREYMAIN),
                  ),
                  SizedBox(
                    width: 260,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: ColorConstants.GREYMAIN,
                    size: 20,
                  )
                ],
              ),
            ),
            Positioned(
              top: 280,
              left: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Surprise",
                    style: TextStyle(color: ColorConstants.GREYMAIN),
                  ),
                  SizedBox(
                    width: 277,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: ColorConstants.GREYMAIN,
                    size: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
