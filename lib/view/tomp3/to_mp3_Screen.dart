import 'package:flutter/material.dart';
import 'package:xender/utils/constants/color_constants.dart';

class ToMp3Screen extends StatelessWidget {
  const ToMp3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.SECONDARY_COLOR,
        title: Text(
          "ToMP3",
          style: TextStyle(
              color: ColorConstants.PRIMARY_COLOR,
              fontSize: 26,
              fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: ColorConstants.BACKGROUND_COLOR,
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          SearchBar(
            hintText: "Select Video",
            hintStyle: WidgetStatePropertyAll(
                TextStyle(color: ColorConstants.GREYMAIN)),
            trailing: List.generate(
              1,
              (index) {
                return Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorConstants.SECONDARY_COLOR,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.movie_creation_outlined,
                        color: ColorConstants.SECONDARY_COLOR,
                      ),
                      Text(
                        "  >>>  ",
                        style: TextStyle(
                          color: ColorConstants.SECONDARY_COLOR,
                        ),
                      ),
                      Icon(
                        Icons.music_video_sharp,
                        color: ColorConstants.SECONDARY_COLOR,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
