import 'package:flutter/material.dart';
import 'package:moqayda/pages/shared/login/custom_button.dart';
import 'package:moqayda/utilities/app_color.dart';
import '../../../utilities/routes.dart';

void showCustomDialog(BuildContext context) => showDialog(
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
                  'مرحبا يرجى تسجيل الدخول لاستخدام ',
                  style: TextStyle(fontSize: 19),
                ),
                const Center(
                  child: Text(
                    ' التطبيق',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      buttonname: 'تسجيل ',
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(SpeacialRoutes.loginRoute);
                      },
                      buttoncolor: Kwhite,
                      textcolor: Kblack,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CustomButton(
                      buttonname: ' انشاء حساب',
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(SpeacialRoutes.signUpRoute);
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                )
              ]),
        ),
      );
    });
