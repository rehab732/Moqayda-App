import 'package:flutter/material.dart';
import 'package:moqayda/pages/shared/home_page_shared/main_box_home.dart';
import 'package:moqayda/utilities/network_assets.dart';
import 'package:moqayda/utilities/routes.dart';

import '../../../utilities/app_color.dart';
import '../../shared/home_page_shared/main_text_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
         backgroundColor: KPrimaryColor,
        // toolbarHeight: 22,
        title: const Text('الرئيسية',style: TextStyle(color: Kblack),),
        centerTitle: true,
        leading: const Icon(
          Icons.notifications_none_rounded,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  AppAssets.homeBanner,
                  height: size.height * 0.19,
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
              ),

              /// Main sizedBox
              SizedBox(
                height: size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.filter_outlined),
                  SizedBox(
                    width: size.width * 0.8,
                    child: GestureDetector(
                      onTap: () =>
                          Navigator.of(context, rootNavigator: true).pushNamed(
                        SpeacialRoutes.searchHomeRoute,
                      ),
                      // ! To Make Search Bar Not valid.
                      child: Container(
                        decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                        

                        child: const AbsorbPointer(
                          // absorbing: false,
                          child: MainTextFormField(
                            hintText: 'ابـحـث عـن أي شـيء تـريـد مـقـايـضـتـه',
                            suffixIcon: Icon(
                              Icons.search_rounded,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'خــدمــاتــنا :',
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const MainBoxHome(
                    iconType: Icons.brightness_auto_rounded,
                    textType: 'براندات',
                  ),
                  InkWell(
                    onTap: () => Navigator.of(context, rootNavigator: true)
                        .pushNamed(SpeacialRoutes.childrenToyesRoute),
                    child: const MainBoxHome(
                      iconType: Icons.smart_toy_sharp,
                      textType: 'ألعاب الأطفال',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.014,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MainBoxHome(
                    iconType: Icons.card_giftcard_rounded,
                    textType: 'هدايا',
                  ),
                  MainBoxHome(
                    iconType: Icons.electric_bolt_rounded,
                    textType: 'الكترونيات',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
