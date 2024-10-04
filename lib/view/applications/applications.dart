import 'package:flutter/material.dart';
import 'package:xender/utils/constants/color_constants.dart';
import 'package:xender/view/dummydb.dart';

class Applications extends StatefulWidget {
  const Applications({super.key});

  @override
  State<Applications> createState() => _ApplicationsState();
}

class _ApplicationsState extends State<Applications> {
  List<int> selectedIndices = [];
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: _buildApplication(),
        ),
      ),
    );
  }

  // Building the grid of applications
  Widget _buildApplication() {
    return GridView.builder(
      itemCount: Dummydb.Appimages.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 10,
        crossAxisSpacing: 4,
        crossAxisCount: 4,
      ),
      itemBuilder: (context, index) {
        final isSelected = selectedIndices.contains(index);
        return Column(
          children: [
            GestureDetector(
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
                  if (_bottomSheetController != null && _isBottomSheetOpen) {
                    Navigator.of(context).pop();
                    _isBottomSheetOpen = false;
                  }
                }
              },
              child: Container(
                width: 75,
                height: 80,
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 3),
                decoration: BoxDecoration(
                  color: isSelected
                      ? Colors.blue.withOpacity(0.2)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage(Dummydb.Appimages[index]))),
                            child: Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: isSelected
                                        ? Color.fromARGB(255, 7, 111, 61)
                                        : Colors.transparent,
                                  ),
                                  child: isSelected
                                      ? Icon(Icons.check,
                                          size: 18,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255))
                                      : null,
                                )),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Text(Dummydb.ApplicationNames[index]),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
