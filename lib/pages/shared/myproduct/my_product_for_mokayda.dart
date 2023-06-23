import 'package:moqayda/utilities/network_assets.dart';

import '../../../utilities/app_color.dart';
import 'package:flutter/material.dart';

class MyProductForMoqaydaCard extends StatefulWidget {
  const MyProductForMoqaydaCard({Key? key}) : super(key: key);

  @override
  State<MyProductForMoqaydaCard> createState() =>
      _MyProductForMoqaydaCardState();
}

class _MyProductForMoqaydaCardState extends State<MyProductForMoqaydaCard> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.276,
      width: size.width * 0.45,
      child: Card(
        color: const Color.fromRGBO(249, 249, 249, 0.85),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              // height: size.height * 0.3,
              child: Stack(
                children: [
                  Image.asset(
                    AppAssets.keyboard,
                    width: size.width * 0.45,
                    height: size.height * 0.2,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    right: 0,
                    child: Checkbox(
                        side: const BorderSide(color: Colors.white),
                        activeColor: Colors.red,
                        //  Color.fromRGBO(0, 0, 0, 0.04),
                        checkColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        // focusColor: Colors.black,
                        fillColor: MaterialStateProperty.all(AppColors.primary),
                        // Color.fromRGBO(0, 0, 0, 0)
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        }),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(size.width * 0.014),
              child: const Text(
                'كيبورد مميز',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}