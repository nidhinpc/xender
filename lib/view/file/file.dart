import 'package:flutter/material.dart';
import 'package:xender/utils/constants/color_constants.dart';
import 'package:xender/view/dummydb.dart';
import 'package:xender/view/global_widgets/searchbarsection.dart';

class File extends StatefulWidget {
  const File({super.key});

  @override
  State<File> createState() => _FileState();
}

class _FileState extends State<File> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.BACKGROUND_COLOR,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBarsection(),
              Container(
                height: 700,
                width: 700,
                child: _buildFiles(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFiles() {
    return ListView.builder(
      itemBuilder: (_, index) {
        return ListTile(
          iconColor: Color.fromARGB(255, 241, 240, 240),
          leading: Container(
            height: 35,
            width: 35,
            color: Colors.blueGrey,
            child: Dummydb.filesList[index]["iconss"],
          ),
          title: Text(
            Dummydb.filesList[index]["title"],
            style: TextStyle(color: Colors.grey),
          ),
          subtitle: Text(
            Dummydb.filesList[index]["subtittle"],
          ),
        );
      },
      itemCount: Dummydb.filesList.length,
    );
  }
}
