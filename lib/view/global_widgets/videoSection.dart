import 'package:flutter/material.dart';
import 'package:xender/utils/constants/color_constants.dart';

class videoSection extends StatelessWidget {
  dynamic videoimage;
  String subtitle;

  String tittle;
  void Function()? onCardTaped;
  String duration;
  dynamic circlecolor;
  dynamic tick;

  videoSection({
    required this.videoimage,
    required this.subtitle,
    required this.duration,
    required this.tittle,
    super.key,
    this.onCardTaped,
    this.circlecolor,
    this.tick,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTaped,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  image: DecorationImage(image: NetworkImage(videoimage))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Stack(
                    children: [
                      Container(
                        width: 60,
                        height: 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.amber,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.play_arrow,
                              size: 15,
                            ),
                            Text(
                              duration,
                              style:
                                  TextStyle(fontSize: 10, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tittle,
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                Container(
                  width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: circlecolor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              border:
                                  Border.all(color: ColorConstants.GREYMAIN)),
                          child: tick),
                    ],
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
