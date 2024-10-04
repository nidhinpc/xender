import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Track the selected containers
  List<int> _selectedContainers = [];

  // Show or hide the BottomSheet
  void _toggleBottomSheet() {
    if (_selectedContainers.isNotEmpty) {
      showBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 100,
            color: Colors.grey[200],
            child: Center(
              child: Text(
                'Selected ${_selectedContainers.length} container(s)',
                style: TextStyle(fontSize: 18),
              ),
            ),
          );
        },
      );
    } else {
      Navigator.of(context).pop(); // Close bottom sheet if all are unselected
    }
  }

  // Handle container tap
  void _onContainerTap(int index) {
    setState(() {
      if (_selectedContainers.contains(index)) {
        _selectedContainers.remove(index); // Unselect the container
      } else {
        _selectedContainers.add(index); // Select the container
      }
    });

    // Toggle bottom sheet depending on selection status
    if (_selectedContainers.isEmpty) {
      Navigator.of(context)
          .pop(); // Close the bottom sheet if none are selected
    } else if (_selectedContainers.length == 1) {
      _toggleBottomSheet(); // Open the bottom sheet on the first selection
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selectable Containers'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Two containers per row
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: 6, // Total number of containers
        itemBuilder: (context, index) {
          bool isSelected = _selectedContainers
              .contains(index); // Check if container is selected
          return GestureDetector(
            onTap: () => _onContainerTap(index),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.greenAccent : Colors.blueAccent,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: isSelected ? Colors.green : Colors.blue,
                      width: 3,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Container ${index + 1}',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                if (isSelected)
                  Positioned(
                    right: 8,
                    top: 8,
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
