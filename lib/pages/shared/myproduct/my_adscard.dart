import 'package:flutter/material.dart';
import 'package:moqayda/utilities/network_assets.dart';

import 'my_ads_cardicon.dart';



class MyAdsCard extends StatelessWidget {
  const MyAdsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      color: const Color.fromRGBO(249, 249, 249, 0.85),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                MyAdsCardIcon(
                  size: size,
                  iconType: Icons.visibility_outlined,
                ),
                SizedBox(width: size.width * 0.02),
                MyAdsCardIcon(
                  size: size,
                  iconType: Icons.delete_outline_sharp,
                ),
                SizedBox(width: size.width * 0.02),
                MyAdsCardIcon(
                  size: size,
                  iconType: Icons.mode_edit_outline_outlined,
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  'كيبورد مميز',
                ),
                SizedBox(width: size.width * 0.03),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Image.asset(
                    AppAssets.keyboard,
                    height: size.height * 0.07,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}