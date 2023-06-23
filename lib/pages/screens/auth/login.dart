import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:moqayda/utilities/network_assets.dart';
import 'package:moqayda/utilities/routes.dart';
import '../../../utilities/app_color.dart';
import '../../shared/login/bar.dart';
import '../../shared/login/custom_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController countrycode = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  PhoneNumber number = PhoneNumber(isoCode: 'NG');
  GlobalKey<FormState> kk = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Kwhite,
      appBar: Bar(
        barname: 'تسجيل الدخول',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenSize.height * .05,
            ),
            Image.asset(AppAssets.homeBanner),
            const Text(
              'تسجيل الدخول ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 33,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    ' يجب عليك تسجيل للتعامل مع التطبيق من فضلك ',
                    style: TextStyle(fontSize: screenSize.width * 0.052),
                  ),
                  const Text(
                    ' سجل عن طريق رقم جوالك',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: screenSize.height * .02,
                  ),
                  const Text(
                    'رقم جوالك ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenSize.height * .01,
            ),
            Form(
              key: kk,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: screenSize.height * .08,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      InternationalPhoneNumberInput(
                        validator: (data) {
                          if (data!.isEmpty) {
                            return 'feild is required';
                          }
                        },
                        onInputChanged: (PhoneNumber number) {
                          print(number.phoneNumber);
                        },
                        onInputValidated: (bool value) {
                          print(value);
                        },
                        initialValue: number,
                        textFieldController: phonenumber,
                        formatInput: false,

                        textAlign: TextAlign.end,

                        cursorColor: Kblack,

                        selectorConfig: const SelectorConfig(
                          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                        ),
                        keyboardType: const TextInputType.numberWithOptions(
                            signed: true, decimal: true),
                        inputBorder: const OutlineInputBorder(),
                        onSaved: (PhoneNumber number) {
                          print('On Saved: $number');
                        },

                        // ignore: prefer_const_constructors
                        inputDecoration: InputDecoration(
                          hintText: ' : رقم الجوال',
                          contentPadding:
                              const EdgeInsets.only(bottom: 15, left: 0),
                          border: InputBorder.none,
                          hintStyle: const TextStyle(
                            //color: Colors.grey.shade500,
                            fontSize: 16,
                          ),
                        ),
                        ignoreBlank: false,
                        autoValidateMode: AutovalidateMode.disabled,
                        selectorTextStyle: const TextStyle(color: Kblack),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height * .05,
            ),
            CustomButton(
              buttonname: "تسجيل الدخول",
              onPressed: () {
                if (kk.currentState!.validate()) {
                  Navigator.of(context)
                      .pushNamed(SpeacialRoutes.otbRoute);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
