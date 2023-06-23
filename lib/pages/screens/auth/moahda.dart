import 'package:flutter/material.dart';
import 'package:moqayda/utilities/network_assets.dart';

import '../../../utilities/app_color.dart';
import '../../shared/login/bar.dart';

class UseageStrategy extends StatefulWidget {
  const UseageStrategy({super.key});

  @override
  State<UseageStrategy> createState() => _UseageStrategyState();
}

class _UseageStrategyState extends State<UseageStrategy> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Kwhite,
      appBar: Bar(
        barname: 'معاهدة الاستخدام',
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          SizedBox(
            height: screenSize.height * .1,
          ),
          Image.asset(AppAssets.back),
          SizedBox(
            height: screenSize.height * .05,
          ),
          const Text(
            'هذا النص افتراضى',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: screenSize.height * .05,
          ),
          const Text(
              ' افـتـراضـي افـتـراضـي افـتـراضـي افـتـراضـي افـتـراضـيهـذا الـنـص افـتـراضـي هـذا الـنـص افـتـراضـي هـذا الـنـص افـتـراضـي هـذا الـنـص افـتـراضـي هـذا الـنـص افـتـراضـي هـذا الـنـص افـتـراضـي هـذا الـنـص افـتـراضـي هـذا الـنـص افـتـراضـي')
        ]),
      ),
    );
  }
}
