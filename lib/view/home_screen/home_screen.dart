import 'package:flutter/material.dart';
import 'package:xender/utils/constants/image_constants.dart';
import 'package:xender/view/applications/applications.dart';
import 'package:xender/view/downloadss/downloadss.dart';
import 'package:xender/view/file/file.dart';
import 'package:xender/view/historys/historys.dart';
import 'package:xender/view/musics/musics.dart';
import 'package:xender/view/photoss/photoss.dart';
import 'package:xender/view/videoss/videoss.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      initialIndex: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: Row(
            children: [
              Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              // Expanded(
              //   child: Image(
              //       height: 50,
              //       color: Color.fromARGB(255, 158, 221, 190).withOpacity(.5),
              //       fit: BoxFit.fitHeight,
              //       image: AssetImage(
              //         ImageConstants.XENDER_LOGO,
              //       )),
              // )
            ],
          ),
          backgroundColor: Colors.greenAccent,
          title: const Text(
            "Xender",
            style: TextStyle(color: Colors.white),
          ),
          actions: const [
            Row(
              children: [
                Icon(
                  Icons.message,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.menu,
                  color: Colors.white,
                )
              ],
            ),
          ],
          bottom: const TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              tabs: <Widget>[
                Tab(
                  text: "HISTORY",
                ),
                Tab(
                  text: "DOWNLOAD",
                ),
                Tab(
                  text: "APP",
                ),
                Tab(
                  text: "PHOTO",
                ),
                Tab(
                  text: "MUSIC",
                ),
                Tab(
                  text: "VIDEO",
                ),
                Tab(
                  text: "FILE",
                )
              ]),
        ),
        body: TabBarView(
          children: [
            Historys(),
            Downloadss(),
            Applications(),
            Photoss(),
            Musics(),
            Videoss(),
            File()
          ],
        ),

        // body: Column(
        //   children: [
        //     Row(
        //       children: [
        //         PopupMenuButton(
        //             itemBuilder: (context) => [
        //                   PopupMenuItem(
        //                     child: Text("Profile"),
        //                     onTap: () {},
        //                   ),
        //                   PopupMenuItem(
        //                     child: Text("Settings"),
        //                     onTap: () {},
        //                   ),
        //                 ]),
        //       ],
        //     )
        //   ],
        // ),
      ),
    );
  }
}
