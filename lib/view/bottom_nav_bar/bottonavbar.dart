import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:xender/utils/constants/color_constants.dart';
import 'package:xender/view/home_screen/home_screen.dart';
import 'package:xender/view/playlist_screen/playlist_screen.dart';
import 'package:xender/view/profile_screen/profile_screen.dart';
import 'package:xender/view/social_Screen/social_screen.dart';
import 'package:xender/view/tomp3/to_mp3_Screen.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottonavbarState();
}

class _BottonavbarState extends State<Bottomnavbar> {
  int selectedTab = 2;
  List screens = [
    PlaylistScreen(),
    ToMp3Screen(),
    HomeScreen(),
    SocialScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: ElevatedButton(
          onPressed: () {
            showBottomSheet(
              backgroundColor: Colors.transparent,
              context: context,
              builder: (BuildContext context) {
                return BottomSheet();
              },
            );
          },
          child: Icon(Icons.share),
        ),
        body: screens[selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTab,
          onTap: (value) {
            selectedTab = value;
            setState(() {});
          },
          type: BottomNavigationBarType.shifting,
          backgroundColor: Color.fromARGB(255, 60, 62, 61),
          items: [
            BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 60, 62, 61),
                icon: Icon(
                  Icons.live_tv_outlined,
                ),
                activeIcon: Icon(
                  Icons.live_tv,
                  color: ColorConstants.SECONDARY_COLOR,
                ),
                label: "PLAYLIST"),
            BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 60, 62, 61),
                icon: Icon(
                  Icons.shop_two_outlined,
                ),
                activeIcon: Icon(
                  Icons.shop_two_outlined,
                  color: ColorConstants.SECONDARY_COLOR,
                ),
                label: "TOMP3"),
            BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 60, 62, 61),
                icon: Icon(
                  Icons.share,
                  color: Colors.transparent,
                ),
                activeIcon: Icon(
                  Icons.share,
                  color: Colors.transparent,
                ),
                label: ""),
            BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 60, 62, 61),
                icon: Icon(
                  Icons.download_for_offline_outlined,
                ),
                activeIcon: Icon(
                  Icons.download_for_offline,
                  color: ColorConstants.SECONDARY_COLOR,
                ),
                label: "SOCIAL"),
            BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 60, 62, 61),
                icon: Icon(
                  Icons.person_outline_outlined,
                ),
                activeIcon: Icon(
                  Icons.person,
                  color: ColorConstants.SECONDARY_COLOR,
                ),
                label: "ME"),
          ],
        ));
  }
}

class BottomSheet extends StatelessWidget {
  const BottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      color: Colors.transparent,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                        color: ColorConstants.SECONDARY_COLOR,
                        border: Border.all(
                            color: ColorConstants.BACKGROUND_COLOR, width: 2),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.send,
                          color: ColorConstants.PRIMARY_COLOR,
                        ),
                        Text(
                          "SEND",
                          style: TextStyle(
                              color: ColorConstants.PRIMARY_COLOR,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                        color: ColorConstants.SECONDARY_COLOR,
                        border: Border.all(
                            color: ColorConstants.BACKGROUND_COLOR, width: 2),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.file_download_outlined,
                          color: ColorConstants.PRIMARY_COLOR,
                        ),
                        Text(
                          "RECEIVE",
                          style: TextStyle(
                              color: ColorConstants.PRIMARY_COLOR,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
