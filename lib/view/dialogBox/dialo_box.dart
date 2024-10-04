import 'package:flutter/material.dart';

class ContainerSelectionScreen extends StatefulWidget {
  @override
  _ContainerSelectionScreenState createState() =>
      _ContainerSelectionScreenState();
}

class _ContainerSelectionScreenState extends State<ContainerSelectionScreen> {
  // Track selected containers
  List<bool> _isSelected = List.generate(6, (index) => false);

  // Method to toggle container selection
  void _toggleSelection(int index) {
    setState(() {
      _isSelected[index] = !_isSelected[index];
    });

    // Show or hide the bottom sheet based on the selection
    if (_isSelected.contains(true)) {
      _showBottomSheet();
    } else {
      Colors.transparent; // Close the bottom sheet if all are unselected
    }
  }

  // Method to show the Bottom Sheet
  void _showBottomSheet() {
    if (_isSelected.contains(true)) {
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 100,
            color: Colors.blue[100],
            child: Center(
              child: Container(
                color: Colors.blueAccent,
                child: Text(
                  'You have selected items',
                  style: TextStyle(
                      fontSize: 18,
                      color: const Color.fromARGB(255, 250, 249, 249)),
                ),
              ),
            ),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multi-Select Containers'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: _isSelected.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => _toggleSelection(index),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: _isSelected[index] ? Colors.blue : Colors.grey,
                  width: 2.0,
                ),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    'Container ${index + 1}',
                    style: TextStyle(fontSize: 16),
                  ),
                  if (_isSelected[index])
                    Positioned(
                      right: 8,
                      top: 8,
                      child: Icon(
                        Icons.check_circle,
                        color: Colors.blue,
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
