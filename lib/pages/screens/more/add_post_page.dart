import 'package:flutter/material.dart';
import 'package:moqayda/pages/shared/login/bar.dart';
import 'package:moqayda/pages/shared/login/custom_button.dart';

import 'package:moqayda/utilities/app_color.dart';
import 'package:image_picker/image_picker.dart';

import '../../../utilities/routes.dart';
import '../../shared/customfield.dart';
import '../../shared/login/custom_text.dart';
import '../../shared/myproduct/dropdownbutton.dart';

class AddPostPage extends StatefulWidget {
  const AddPostPage({Key? key}) : super(key: key);

  @override
  State<AddPostPage> createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  String? productname;
  String? productcategory;
  String? productdescription;
  String? swap_productcategory;
  String? swap_productname;
  String? swap_productdescription;
  late PickedFile _image;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: Bar(barname: 'أضف اعلان'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: customtext(textname: 'بيانات المنتج'),
                ),
                SizedBox(height: size.height * 0.01),
                Align(
                  alignment: Alignment.centerRight,
                  child: customtext(textname: 'اضافة صورة'),
                ),
                Container(
                  height: size.height * 0.2,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 247, 245, 245),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              takephoto(ImageSource.gallery);
                              // _image=_picker as PickedFile;
                            },
                            icon: const Icon(
                              Icons.file_upload_outlined,
                              color: KButtonColor,
                            )),
                        const Text('قم بارفاق الصورة')
                      ]),
                ),
                SizedBox(height: size.height * 0.01),
                Align(
                  alignment: Alignment.centerRight,
                  child: customtext(textname: 'اسم المنتج'),
                ),
                CustomFiled(
                  txt: 'اسم المنتج',
                  onsubmit: (String data) {
                    productname = data;
                  },
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: customtext(textname: ' اختر التصنيف'),
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        dropbutton(),
                        const Expanded(child: Spacer()),
                        Text('اختر التصنيف'),
                      ],
                    )),
                Align(
                  alignment: Alignment.centerRight,
                  child: customtext(textname: '  الوصف'),
                ),
                CustomFiled(
                  txt: '  قم بكتابة الوصف',
                  onsubmit: (String data) {
                    productdescription = data;
                  },
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: customtext(textname: 'بيانات منتج المقايضة'),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: customtext(textname: 'اختر تصنيف للمقايضة معة'),
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        dropbutton(),
                        const Spacer(),
                        const Text('اختر التصنيف'),
                      ],
                    )),
                Align(
                  alignment: Alignment.centerRight,
                  child: customtext(textname: 'ادخل منتج جديد للمقايضة معة'),
                ),
                CustomFiled(
                  txt: 'اسم المنتج',
                  onsubmit: (String data) {
                    swap_productname = data;
                  },
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: customtext(textname: '  وصف منتج المقايضة'),
                ),
                CustomFiled(
                  txt: '  قم بكتابة الوصف',
                  onsubmit: (String data) {
                    swap_productdescription = data;
                  },
                ),
                SizedBox(height: size.height * 0.05),
                CustomButton(
                  buttonname: 'اضف اعلان',
                  buttoncolor: KButtonColor,
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true)
                        .pushNamed(SpeacialRoutes.adsRoute);
                    //المفروض بقا هنا تاخدى الداتا اللى عيزاها تظهر فى قائمة الاعلانات وتظهر هناك
                  },
                ),
                SizedBox(height: size.height * 0.05),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void takephoto(ImageSource source) async {
    final PickedFile = await _picker.getImage(source: source);
    setState(() {
      _image = PickedFile!;
    });
  }
}
