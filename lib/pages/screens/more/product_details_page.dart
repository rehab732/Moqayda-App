import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import 'package:moqayda/utilities/app_color.dart';
import 'package:moqayda/utilities/network_assets.dart';


import '../../shared/product_details/product_details_comments.dart';
import '../../shared/product_details/product_details_description.dart';

class EducationalProductDetailsPage extends StatefulWidget {
  const EducationalProductDetailsPage({Key? key}) : super(key: key);

  @override
  State<EducationalProductDetailsPage> createState() =>
      _EducationalProductDetailsPageState();
}

class _EducationalProductDetailsPageState
    extends State<EducationalProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    bool type = true;
    final size = MediaQuery.of(context).size;
    debugPrint('Yarab');
    return Scaffold(
      appBar: AppBar(
         backgroundColor: KPrimaryColor,
        leading: const Icon(
          Icons.share_outlined,
          color: Colors.black,
        ),
        actions: [
          InkWell(
              onTap: () => Navigator.of(context).pop(),
              child: const Icon(
                Icons.arrow_circle_right_outlined,
                color: Colors.black,
              )),
          SizedBox(
            width: size.width * 0.03,
          ),
        ],
      ),
      body: StatefulBuilder(
        builder:
            (BuildContext context, void Function(void Function()) setState) =>
                SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(children: [
              Image.asset(
                AppAssets.toyimage,
                width: double.infinity,
                height: size.height * 0.35,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  LikeButton(),
                  Text(
                    'ألعاب تعليمية من الخشب',
                    textDirection: TextDirection.rtl,
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('(122)'),
                  Icon(Icons.thumb_down),
                  Text('(122)'),
                  Icon(Icons.thumb_up),
                  Text('(122)'),
                  Icon(Icons.visibility),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                color: const Color.fromRGBO(140, 198, 62, 0.15),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: size.width * 0.43,
                        child: OutlinedButton(
                          onPressed: () => setState(() {
                            if (type == true) return null;
                            type = !type;
                          }),
                          style: OutlinedButton.styleFrom(
                            backgroundColor: type ? AppColors.primary : null,
                            side: BorderSide.none,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(size.width * 0.01),
                            child: Text(
                              'التعليقات',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.43,
                        child: OutlinedButton(
                          onPressed: () => setState(() {
                            if (type == false) return null;
                            type = !type;
                          }),
                          style: OutlinedButton.styleFrom(
                            backgroundColor: type ? null : AppColors.primary,
                            side: BorderSide.none,
                            //  BorderSide(
                            //   // color: AppColors.activeColorBottomNavBar,
                            //   style: BorderStyle.solid,
                            //   width: 1,
                            // ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(size.width * 0.01),
                            child: Text(
                              'الوصف',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // ),
              SizedBox(
                height: size.height * 0.02,
              ),
              type == false
                  ? ProductDetailsDescription(size: size)
                  : ProductDetailsComments(size: size)
            ]),
          ),
        ),
      ),
    );
  }
}
