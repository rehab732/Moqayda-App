
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:moqayda/pages/screens/more/bottom_nav_bar.dart';
import '../../../utilities/app_color.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => const BottomNavBar(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kwhite,
      body:Center(child: Image(image: AssetImage('assets/images/background.jpg'))),
    );
  }
}
