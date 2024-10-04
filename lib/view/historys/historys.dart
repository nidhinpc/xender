import 'package:flutter/material.dart';
import 'package:xender/utils/constants/color_constants.dart';

class Historys extends StatelessWidget {
  const Historys({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: ColorConstants.BACKGROUND_COLOR,
        body: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 30,
                width: 360,
                decoration: BoxDecoration(color: Colors.white),
                child: TabBar(
                  indicator:
                      BoxDecoration(color: ColorConstants.SECONDARY_COLOR),
                  labelColor: Colors.white,
                  indicatorColor: ColorConstants.SECONDARY_COLOR,
                  indicatorSize: TabBarIndicatorSize.tab,
                  overlayColor:
                      WidgetStatePropertyAll(ColorConstants.SECONDARY_COLOR),
                  automaticIndicatorColorAdjustment: true,
                  unselectedLabelColor: ColorConstants.SECONDARY_COLOR,
                  tabs: [
                    Tab(
                      child: Text("RECEIVED"),
                    ),
                    Tab(
                      child: Text("SENT"),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
