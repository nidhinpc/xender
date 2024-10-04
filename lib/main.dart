import 'package:flutter/material.dart';
import 'package:xender/view/dialogBox/dialo_box.dart';
import 'package:xender/view/splash_screen/splash_screen.dart';

void main(List<String> args) {
  runApp(Xenter());
}

class Xenter extends StatelessWidget {
  const Xenter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
