import 'package:flutter/material.dart';
import 'package:moqayda/utilities/network_assets.dart';

import '../../utilities/app_color.dart';
import 'canceldialog.dart';
import 'login/custom_button.dart';

class itemlistofmokayda extends StatelessWidget {
  itemlistofmokayda({
    Key? key,
    required this.screenSize,
    required this.myproductimage,
    required this.swapproductimage,
  }) : super(key: key);

  final Size screenSize;
  String? myproductimage;
  String? swapproductimage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                swapproduct(screenSize: screenSize, myproductimage: swapproductimage),
                SizedBox(
                  height: screenSize.height * 0.02,
                ),
                const Text('المنتج المراد المقايضة معه')
              ],
            ),
            const Spacer(),
            // SizedBox(width: screenSize.width*0.07,),
            Column(
              children: [
                myproduct(screenSize: screenSize, imagename: myproductimage),
                SizedBox(
                  height: screenSize.height * 0.02,
                ),
                const Text('المنتج')
              ],
            ),
          ],
        ),
        SizedBox(
          height: screenSize.height * 0.03,
        ),
        CustomButton(
          buttonname: 'الغاء',
          buttoncolor: KButtonColor,
          onPressed: () {
            canceldialog(context);
          },
          textcolor: Kwhite,
        )
      ],
    );
  }
}

class swapproduct extends StatelessWidget {
  const swapproduct({
    Key? key,
    required this.screenSize,
    required this.myproductimage,
  }) : super(key: key);

  final Size screenSize;
  final String? myproductimage;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        screenSize.width * 0.001,
      ),
      child: Image.asset(
        myproductimage!,
        width: screenSize.height * 0.2,
        fit: BoxFit.cover,
      ),
    );
  }
}

class myproduct extends StatelessWidget {
  const myproduct({
    Key? key,
    required this.screenSize,
    required this.imagename,
  }) : super(key: key);

  final Size screenSize;
  final String? imagename;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        screenSize.width * 0.001,
      ),
      child: Image.asset(
        imagename!,
        width: screenSize.height * 0.2,
        fit: BoxFit.cover,
      ),
    );
  }
}
