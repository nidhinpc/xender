import 'package:flutter/material.dart';
import 'package:xender/utils/constants/color_constants.dart';
import 'package:xender/view/dummydb.dart';
import 'package:xender/view/global_widgets/musicSection.dart';
import 'package:xender/view/global_widgets/searchbarsection.dart';

class Musics extends StatefulWidget {
  const Musics({super.key});

  @override
  State<Musics> createState() => _MusicsState();
}

class _MusicsState extends State<Musics> {
  PersistentBottomSheetController? _bottomSheetController;
  bool _isBottomSheetOpen = false;

// Building the Bottom Sheet
  void _showBottomSheet() {
    _bottomSheetController = showBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 70,
          padding: EdgeInsets.all(12),
          color: ColorConstants.BACKGROUND_COLOR,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'X',
                style: TextStyle(
                  fontSize: 18,
                  color: ColorConstants.GREYMAIN,
                ),
              ),
              Container(
                height: 35,
                width: 120,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 17, 156, 105),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "SENT",
                    style: TextStyle(
                      fontSize: 18,
                      color: const Color.fromARGB(255, 250, 249, 249),
                    ),
                  ),
                ),
              ),
              Icon(
                Icons.delete,
                color: ColorConstants.GREYMAIN,
              )
            ],
          ),
        );
      },
    );

    _bottomSheetController!.closed.whenComplete(() {
      _isBottomSheetOpen = false; //reset
    });

    _isBottomSheetOpen = true; // Set
  }

  List<int> selectedIndices = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.BACKGROUND_COLOR,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBarsection(),
              Container(
                height: 900,
                width: 700,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    final isSelected = selectedIndices.contains(index);
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (selectedIndices.contains(index)) {
                            selectedIndices.remove(index);
                          } else {
                            selectedIndices.add(index);
                          }
                        });

                        if (selectedIndices.isNotEmpty) {
                          if (!_isBottomSheetOpen) {
                            _showBottomSheet();
                          }
                        } else {
                          if (_bottomSheetController != null &&
                              _isBottomSheetOpen) {
                            Navigator.of(context).pop();
                            _isBottomSheetOpen = false;
                          }
                        }
                      },
                      child: MusicSection(
                        tick: isSelected
                            ? Icon(Icons.check,
                                size: 18,
                                color: Color.fromARGB(255, 255, 255, 255))
                            : null,
                        circlecolor: isSelected
                            ? Color.fromARGB(255, 7, 111, 61)
                            : Colors.transparent,
                        tittle: Dummydb.musicList[index]["title"],
                        musicimage: Dummydb.musicList[index]["musicimage"],
                        size: Dummydb.musicList[index]["size"],
                        subtitle: Dummydb.musicList[index]["subtitle"],
                      ),
                    );
                  },
                  itemCount: Dummydb.musicList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
