import 'package:flutter/material.dart';
import 'package:moqayda/utilities/routes.dart';

import 'package:pinput/pinput.dart';

import '../../../utilities/app_color.dart';
import '../../../utilities/network_assets.dart';
import '../../shared/login/bar.dart';
import '../../shared/login/custom_button.dart';

class Logincode extends StatefulWidget {
  const Logincode({super.key});

  @override
  State<Logincode> createState() => _LogincodeState();
}

class _LogincodeState extends State<Logincode> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
          fontSize: 20, color: KPrimaryColor, fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: KPrimaryColor),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: KPrimaryColor),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Kcolorotp,
      ),
    );
    return Scaffold(
      backgroundColor: Kwhite,
      appBar: Bar(barname: 'تأكيد الحساب'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Image.asset(AppAssets.homeBanner),
              const Text(
                'تأكيد الحساب',
                style: TextStyle(
                  color: Kblack,
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '   أدخل الرمز الذى تم ارسالة الى الرقم الخاص بك',
                    style: TextStyle(
                      fontSize: screenSize.width * 0.055,
                    ),
                  ),
                  const Text(
                    ' +0201003445985',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: screenSize.height * .04,
              ),
              Pinput(
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
                validator: (s) {
                  return s == '1234' ? null : 'Pin is incorrect';
                },
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
                onCompleted: (pin) => print(pin),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text('اعاده ارسال الرمز خلال 00:25')),
              ),
              SizedBox(
                height: screenSize.height * .04,
              ),
              CustomButton(
                buttonname: "تأكيد",
                onPressed: () {
                  Navigator.of(context).pushNamed(SpeacialRoutes.bottomNavBar);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
