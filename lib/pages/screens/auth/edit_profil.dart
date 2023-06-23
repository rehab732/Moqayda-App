import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:moqayda/utilities/app_color.dart';
import '../../../utilities/routes.dart';
import '../../shared/editprofile_widget.dart';
import '../../shared/login/bar.dart';
import '../../shared/login/custom_button.dart';
import '../../shared/login/custom_text.dart';
import '../../shared/login/custom_text_field.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  String level = '';
  TextEditingController phonenumber = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController country = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    PhoneNumber number = PhoneNumber(isoCode: 'NG');

    GlobalKey<FormState> kk = GlobalKey();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Bar(barname: 'تعديل الملف الشخصى'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            //key: kk,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              const editphoto(),
              customtext(
                textname: ' : الاسم',
              ),
              SizedBox(
                height: screenSize.height * .01,
              ),
              customtextfield(
                controllername: name,
                hintText: ' الاسم',
              ),
              SizedBox(
                height: screenSize.height * .01,
              ),
              customtext(
                textname: ' : رقم الجوال',
              ),
              SizedBox(
                height: screenSize.height * .01,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    InternationalPhoneNumberInput(
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

                      cursorColor: Colors.black,

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
                        hintText: ' رقم الجوال ',
                        contentPadding: EdgeInsets.only(bottom: 15, left: 0),
                        border: InputBorder.none,
                        hintStyle: const TextStyle(
                          //color: Colors.grey.shade500,
                          fontSize: 16,
                        ),
                      ),
                      ignoreBlank: false,
                      autoValidateMode: AutovalidateMode.disabled,
                      selectorTextStyle: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenSize.height * .01,
              ),
              customtext(
                textname: ' : الايميل',
              ),
              SizedBox(
                height: screenSize.height * .01,
              ),
              customtextfield(
                controllername: email,
                hintText: ' الايميل',
              ),
              customtext(
                textname: ' : العنوان بالتفصيل',
              ),
              SizedBox(
                height: screenSize.height * .01,
              ),
              customtextfield(
                controllername: address,
                hintText: ' العنوان بالتفصيل',
              ),
              customtext(
                textname: ' : الدوله',
              ),
              SizedBox(
                height: screenSize.height * .01,
              ),
              customtextfield(
                controllername: country,
                hintText: ' الدوله',
              ),
              customtext(
                textname: ' : المدينه',
              ),
              SizedBox(
                height: screenSize.height * .01,
              ),
              customtextfield(
                controllername: city,
                hintText: ' المدينه',
              ),
              SizedBox(
                height: screenSize.height * .04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'انثى',
                    style: TextStyle(color: Kblack, fontSize: 20),
                  ),
                  Radio(
                      activeColor: KButtonColor,
                      value: "Female",
                      groupValue: level,
                      onChanged: (value) {
                        setState(() {
                          level = value.toString();
                          // gender=value.toString() as TextEditingController;
                        });
                      }),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'ذكر',
                    style: TextStyle(color: Kblack, fontSize: 20),
                  ),
                  Radio(
                      activeColor: KButtonColor,
                      value: "Male",
                      groupValue: level,
                      onChanged: (value) {
                        setState(() {
                          level = value.toString();
                          // gender=value.toString() as TextEditingController;
                        });
                      }),
                  customtext(
                    textname: ' : الجنس',
                  ),
                ],
              ),
              Center(
                  child: CustomButton(
                buttonname: ' حفظ',
                onPressed: () {
                  if (kk.currentState!.validate()) {
                    Navigator.of(context).pushNamed(SpeacialRoutes.loginRoute);
                  }
                },
              ))
            ]),
          ),
        ),
      ),
    );
  }
}
