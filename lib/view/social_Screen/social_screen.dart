import 'package:flutter/material.dart';
import 'package:xender/utils/constants/color_constants.dart';

class SocialScreen extends StatelessWidget {
  const SocialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.BACKGROUND_COLOR,
      appBar: AppBar(
        backgroundColor: ColorConstants.SECONDARY_COLOR,
        title: Text(
          "SOCIAL",
          style: TextStyle(
              color: ColorConstants.PRIMARY_COLOR,
              fontSize: 26,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          CircleAvatar(
            radius: 15,
            child: CircleAvatar(
              radius: 13,
              backgroundColor: ColorConstants.SECONDARY_COLOR,
              child: Icon(
                Icons.question_mark_sharp,
                color: ColorConstants.PRIMARY_COLOR,
                size: 20,
              ),
            ),
          )
        ],
      ),
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
