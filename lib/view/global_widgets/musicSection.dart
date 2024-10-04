import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:xender/utils/constants/color_constants.dart';

class MusicSection extends StatelessWidget {
  dynamic musicimage;
  String subtitle;

  String tittle;
  void Function()? onCardTaped;
  String size;
  dynamic circlecolor;
  dynamic tick;

  MusicSection({
    required this.musicimage,
    required this.subtitle,
    required this.size,
    required this.tittle,
    this.circlecolor,
    super.key,
    this.onCardTaped,
    this.tick,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTaped,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(musicimage))),
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tittle,
                      style: TextStyle(
                          color: ColorConstants.GREYMAIN,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 270,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            subtitle,
                            style: TextStyle(color: ColorConstants.GREYMAIN),
                          ),
                          Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: circlecolor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(
                                      color: ColorConstants.GREYMAIN)),
                              child: tick)
                        ],
                      ),
                    ),
                    Text(
                      size,
                      style: TextStyle(color: ColorConstants.GREYMAIN),
                    )
                  ],
                )
              ],
            ),
          ),
          Divider(
            color: Color.fromARGB(255, 61, 60, 60),
          )
        ],
      ),
    );
  }
}
