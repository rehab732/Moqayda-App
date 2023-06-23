import 'package:flutter/material.dart';
import 'package:moqayda/utilities/routes.dart';

import '../../../utilities/app_color.dart';
import '../../../utilities/network_assets.dart';
import '../main_button.dart';
import 'customdialog.dart';

class ProductDetailsDescription extends StatelessWidget {
  const ProductDetailsDescription({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Full Description-Full Description-Full Description-Full Description-Full Description-Full Description-Full Description-Full Description-Full Description-Full Description-Full Description-Full Description-',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.eight_mp_outlined,
              color: AppColors.activeColorBottomNavBar,
            ),
            Row(
              children: [
                const Text(' رحاب محمد احمد',style: TextStyle(fontSize: 20),),
                SizedBox(
                  width: size.width * 0.01,
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      shape: BoxShape.circle),
                  child: Image.asset(AppAssets.profileimage,
                      width: size.width * 0.10, height: size.height * 0.10),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: size.width * 0.4,
              child: OutlinedButton(
                onPressed: () {
                  showCustomDialog(context);

                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: AppColors.activeColorBottomNavBar,
                    style: BorderStyle.solid,
                    width: 1,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.01)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(size.width * 0.01),
                  child: Text(
                    'مراسلة',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
            ),
            MainButton(
              text: 'مقايضة',
              ontap: () =>showCustomDialog(context),
                //  Navigator.of(context).pushNamed(SpeacialRoutes.signUpRoute),
              small: false,
              medium: true,
              rounded: false,
            )
          ],
        ),
      ],
    );
  }
}
