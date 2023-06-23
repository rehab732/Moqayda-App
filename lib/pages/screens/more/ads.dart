import 'package:flutter/material.dart';
import 'package:moqayda/pages/shared/login/bar.dart';

import '../../shared/myproduct/my_adscard.dart';


class MyAdsPage extends StatelessWidget {
  const MyAdsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: Bar(barname: 'اعلاناتى',),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: const [
                MyAdsCard(),
                MyAdsCard(),
                MyAdsCard(),
                MyAdsCard(),
                MyAdsCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}