import 'package:flutter/material.dart';

class SearchBarsection extends StatelessWidget {
  const SearchBarsection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 95, 92, 92),
              width: 2,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 95, 92, 92),
              width: 2,
            ),
          ),
          fillColor: Color.fromARGB(255, 212, 218, 221),
          contentPadding: EdgeInsets.all(8),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 95, 92, 92),
              width: 2,
            ),
          ),
          prefixIcon: Icon(
            Icons.search,
          ),
          filled: true,
          hintText: "Search local files",
          hintStyle: TextStyle(color: Colors.grey),
          iconColor: Colors.grey.shade400),
      cursorColor: Colors.grey,
      style: TextStyle(color: Colors.grey),
    );
  }
}
