
import 'package:flutter/material.dart';

import '../../utilities/app_color.dart';
import '../../utilities/routes.dart';
import 'login/custom_button.dart';

void showlogoutDialog(BuildContext context) => showDialog(
    // barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Kwhite,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Icon(Icons.person),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  ' هل تريد تسجيل الخروج ؟',
                  style: TextStyle(fontSize: 19),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      buttonname: 'نعم ',
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(SpeacialRoutes.bottomNavBar);
                      },
                      buttoncolor: Kwhite,
                      textcolor: Kblack,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CustomButton(
                      buttonname: '  لا',
                      onPressed: () {
                        Navigator.of(context)
                            .pop();
                      },
                    ),
                  ],
                ),
              const  SizedBox(
                  height: 20,
                )
              ]),
        ),
      );
    });
