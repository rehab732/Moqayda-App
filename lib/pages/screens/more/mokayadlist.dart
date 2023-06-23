import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:moqayda/pages/shared/login/bar.dart';
import 'package:moqayda/utilities/app_color.dart';
import '../../../utilities/network_assets.dart';
import '../../shared/itemlistofmokayda.dart';

class MokaydaList extends StatefulWidget {
  const MokaydaList({super.key});

  @override
  State<MokaydaList> createState() => _MokaydaListState();
}

class _MokaydaListState extends State<MokaydaList> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: Bar(barname: 'قائمة المقايضات'),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: screenSize.height * 0.001,
                child: Container(
                  color: Kblack,
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.01,
              ),
              Row(
                children: [
                  SizedBox(
                    width: screenSize.width * 0.1,
                  ),
                  const Expanded(
                      child: Text(
                    'مقايضات الاخرين',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  )),
                  const Text(
                    'مقايضاتى',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: screenSize.width * 0.1,
                  ),
                ],
              ),
              SizedBox(
                height: screenSize.height * 0.01,
              ),
              SizedBox(
                height: screenSize.height * 0.001,
                child: Container(
                  color: KPrimaryColor,
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.05,
              ),
              itemlistofmokayda(
                screenSize: screenSize, myproductimage: AppAssets.toyimage, swapproductimage: AppAssets.keyboard,

              ),
              SizedBox(
                height: screenSize.height * 0.02,
              ),
              itemlistofmokayda(screenSize: screenSize,myproductimage:AppAssets.toyimage, swapproductimage: AppAssets.keyboard,),
              SizedBox(
                height: screenSize.height * 0.02,
              ),
              itemlistofmokayda(screenSize: screenSize, myproductimage: AppAssets.toyimage, swapproductimage: AppAssets.keyboard,)
            ],
          ),
        ),
      ),
    );
  }
}
