import 'package:flutter/material.dart';

import '../../../utilities/app_color.dart';
import '../home_page_shared/main_text_field.dart';

class ProductDetailsComments extends StatelessWidget {
  const ProductDetailsComments({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: InkWell(
            onTap: () {},
            child: Text(
              'كل التعليقات',
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('2022/2/4 '),
            Text('ابتسام محمد'),
          ],
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        const Text(
          'Full Description-Full Description-Full Description-Full Description-Full Description-Full Description-Full Description-Full Description-Full Description-Full Description-Full Description-Full Description-',
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        MainTextFormField(
          hintText: 'اكتب تعليقك هنا',
          suffixIcon: Icon(
            Icons.send,
            color: AppColors.activeColorBottomNavBar,
          ),
        ),
      ],
    );
  }
}
