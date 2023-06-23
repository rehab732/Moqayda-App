import 'package:flutter/material.dart';
import 'package:moqayda/utilities/app_color.dart';

import '../../shared/preview_content.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KPrimaryColor,
        title: const Text('المفضلة',style: TextStyle(color: Kblack),),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [PreviewContentCard(), PreviewContentCard()],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [PreviewContentCard(), PreviewContentCard()],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [PreviewContentCard(), PreviewContentCard()],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
