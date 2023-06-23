import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:moqayda/pages/shared/main_button.dart';
import 'package:moqayda/utilities/network_assets.dart';

import '../../utilities/app_color.dart';
import '../../utilities/routes.dart';

class PreviewContentCard extends StatelessWidget {
  const PreviewContentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.45,
      height: size.height * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              size.width * 0.01,
            ),
            child: Image.asset(
              AppAssets.toyimage,
              width: size.height * 0.4,
              fit: BoxFit.cover,
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              color: AppColors.secondry,
              borderRadius: BorderRadius.circular(
                size.width * 0.01,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(size.width * 0.02),
                  child: const Text('ألعاب تعليمية من الخشب'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: size.width * 0.01,
                      horizontal: size.width * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const LikeButton(),
                          SizedBox(width: size.width * 0.01),
                          const Text('100'),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.location_searching_outlined),
                          SizedBox(width: size.width * 0.01),
                          const Text('100'),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  //TODO: Improve the UI of This Row..
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.013,
                            vertical: size.width * 0.0119),
                        child: const LikeButton(),
                      ),
                    ),
                    MainButton(
                      text: 'مقايضة',
                      ontap: () => Navigator.of(context).pushNamed(
                          SpeacialRoutes.educationalProductDetailsRoute),
                      small: true,
                      medium: false,
                      rounded: true,
                    ),
                  ],
                )
              ],
            ),
          ),
          // Row(
          //   //TODO: Improve the UI of This Row..
          //   children: [
          //     DecoratedBox(
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(4),
          //         color: Colors.white,
          //         shape: BoxShape.rectangle,
          //       ),
          //       child: Padding(
          //         padding: EdgeInsets.symmetric(
          //             horizontal: size.width * 0.013,
          //             vertical: size.width * 0.015),
          //         child: const LikeButton(),
          //       ),
          //     ),
          //     MainButton(
          //       text: 'مقايضة',
          //       ontap: () {},
          //       small: true,
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
