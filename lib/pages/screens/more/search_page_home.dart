import 'package:flutter/material.dart';
import 'package:moqayda/pages/shared/main_button.dart';
import 'package:moqayda/pages/shared/search_page/searched_card.dart';
import 'package:moqayda/utilities/app_color.dart';

import '../../shared/home_page_shared/main_text_field.dart';
import '../../shared/login/bar.dart';
import '../../shared/search_page/check_box.dart';

class SearchPageHome extends StatelessWidget {
  const SearchPageHome({Key? key}) : super(key: key);
  Future<dynamic> modalBottomSheet(BuildContext context, Size size) {
    return showModalBottomSheet(
        context: context,
        builder: (context) => SizedBox(
              height: size.height * 0.6,
              child: SizedBox(
                height: size.height * 0.6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.1,
                          vertical: size.height * 0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              onTap: () => Navigator.of(context).pop(),
                              child: const Icon(Icons.close)),
                          const Text('فلتر'),
                        ],
                      ),
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: size.width * 0.05),
                          child: const Text(':اختيار الخدمة'),
                        )),
                    Row(
                      children: const [
                        BuildCheckBox(
                          checkBoxTitle: 'براندات',
                        ),
                        BuildCheckBox(
                          checkBoxTitle: 'ألعاب اطفال',
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        BuildCheckBox(
                          checkBoxTitle: 'هدايا',
                        ),
                        BuildCheckBox(
                          checkBoxTitle: 'الكترونيات',
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    MainButton(
                      text: 'بحث',
                      ontap: () {},
                      small: false,
                      medium: false,
                      rounded: true,
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                  ],
                ),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: Bar(barname: 'البحث',),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => modalBottomSheet(context, size),
                      child: const Icon(
                        Icons.filter_outlined,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SizedBox(
                        width: size.width * 0.8,
                        child: const MainTextFormField(
                          hintText: 'ابـحـث عـن أي شـيء تـريـد مـقـايـضـتـه',
                          suffixIcon: Icon(
                            Icons.search_rounded,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.06,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      // alignment: Alignment.centerLeft,
                      child: Text(
                        'مسح الجميع',
                        style:
                            TextStyle(color: AppColors.activeColorBottomNavBar),
                      ),
                    ),
                    const Align(
                      // alignment: Alignment.centerRight,
                      child: Text('مـا تـم الـبحـث عـنـه سـابـقًا'),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SearchedCard(textType: 'هدية'),
                    SearchedCard(textType: 'ألعاب')
                  ],
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SearchedCard(textType: 'لابتوب'),
                    SearchedCard(textType: 'جوال')
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
