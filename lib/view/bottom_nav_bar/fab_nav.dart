import 'package:fab_menu_bottomnav/fab_menu_bottomnav.dart';
import 'package:flutter/material.dart';
import 'package:xender/view/applications/applications.dart';
import 'package:xender/view/downloadss/downloadss.dart';
import 'package:xender/view/historys/historys.dart';
import 'package:xender/view/home_screen/home_screen.dart';

class FabNav extends StatelessWidget {
  const FabNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: NaviBar(
          fabColor: Colors.blue,
          navBarColor: Colors.white,
          fabIconColor: Colors.white,
          fabItems: [
            FabCont(
              icon: Icons.send_outlined,
              text: 'SENT',
              color: Colors.red,
            ),
            FabCont(
              icon: Icons.file_download,
              text: 'RECEIVE',
              color: Colors.purple,
            ),
          ],
          navIconSize: 24,
          navIcon1: Icons.home,
          navIcon2: Icons.branding_watermark,
          navIcon3: Icons.padding,
          navIcon4: Icons.search,
          navIconColor: Colors.black,
          nav1Name: 'home',
          nav2Name: 'search',
          nav3Name: 'help',
          nav4Name: 'profile',
          routeList: [
            HomeScreen(),
            Applications(),
            Downloadss(),
            Historys(),
          ],
        ),
      ),
    );
  }
}
