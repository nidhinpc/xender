import 'package:flutter/material.dart';
import 'package:xender/utils/constants/color_constants.dart';
import 'package:xender/view/dummydb.dart';

class Photoss extends StatefulWidget {
  const Photoss({super.key});

  @override
  State<Photoss> createState() => _PhotossState();
}

class _PhotossState extends State<Photoss> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: ColorConstants.BACKGROUND_COLOR,
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
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
                      child: Row(
                        children: [
                          Icon(Icons.photo),
                          SizedBox(
                            width: 50,
                          ),
                          Text("1334"),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        children: [
                          Icon(Icons.photo_library),
                          SizedBox(
                            width: 50,
                          ),
                          Text("70"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: TabBarView(
                    children: [
                      GridSection(),
                      Expanded(
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: Column(
                            children: [
                              FolderName(name: "camera"),
                              FolderGrid(
                                no: 1,
                                count: 6,
                              ),
                              FolderName(
                                name: "whatsapp",
                              ),
                              FolderGrid(
                                no: 16,
                                count: 6,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FolderGrid extends StatelessWidget {
  int no;
  int count;

  FolderGrid({
    required this.count,
    required this.no,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          itemCount: count,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
          ),
          itemBuilder: (context, index) {
            int imageIndex = index + no;
            return GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(Dummydb.PhotoSection[imageIndex]),
                    fit: BoxFit.cover, // Make sure images fit well
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class FolderName extends StatefulWidget {
  String name;
  FolderName({
    required this.name,
    super.key,
  });

  @override
  State<FolderName> createState() => _FolderNameState();
}

class _FolderNameState extends State<FolderName> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: Color.fromARGB(255, 94, 91, 91),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              widget.name,
              style:
                  TextStyle(color: ColorConstants.PRIMARY_COLOR, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

class GridSection extends StatefulWidget {
  const GridSection({
    super.key,
  });

  @override
  State<GridSection> createState() => _GridSectionState();
}

class _GridSectionState extends State<GridSection> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: GridView.builder(
          itemCount: Dummydb.PhotoSection.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 3,
            crossAxisSpacing: 3,
          ),
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(Dummydb.PhotoSection[index]))),
          ),
        ),
      ),
    );
  }
}
