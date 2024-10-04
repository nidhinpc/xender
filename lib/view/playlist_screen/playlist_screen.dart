import 'package:flutter/material.dart';
import 'package:xender/utils/constants/color_constants.dart';
import 'package:xender/view/musics/musics.dart';
import 'package:xender/view/videoss/videoss.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstants.SECONDARY_COLOR,
          title: Text(
            "PlayList",
            style: TextStyle(fontSize: 24),
          ),
          actions: [Icon(Icons.download_for_offline_rounded)],
          bottom: const TabBar(
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              tabs: <Widget>[
                Tab(
                  text: "PLAYLIST",
                ),
                Tab(
                  text: "ALL MUSIC",
                ),
              ]),
        ),
        backgroundColor: ColorConstants.BACKGROUND_COLOR,
        body: TabBarView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 196, 174, 174),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            "Favourite",
                            style: TextStyle(color: ColorConstants.GREYMAIN),
                          ),
                          Text(
                            "0 songs",
                            style: TextStyle(color: ColorConstants.GREYMAIN),
                          )
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.more_vert,
                        color: ColorConstants.GREYMAIN,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 40,
                  width: 760,
                  color: const Color.fromARGB(255, 98, 95, 95),
                  child: Text(
                    "MyList",
                    style: TextStyle(color: ColorConstants.GREYMAIN),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 229, 221, 221),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.add,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "New Playlist",
                        style: TextStyle(color: ColorConstants.GREYMAIN),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //    Videoss(),
            Musics(),
          ],
        ),
      ),
    );
  }
}
