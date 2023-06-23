import 'package:flutter/material.dart';

import '../../../utilities/app_color.dart';

class Bar extends StatelessWidget implements PreferredSizeWidget {
  Bar({super.key, required this.barname});
  String? barname;
  @override
  Size get preferredSize => Size.fromHeight(60.0);
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return AppBar(
      backgroundColor: KPrimaryColor,
      title: Center(
        child: Text(
          barname!,
          style: const TextStyle(
              color: Kblack, fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
      leading: SizedBox(width: screenSize.width * 0.5),
      actions: [
        InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(
            Icons.arrow_circle_right_outlined,
            color: KIconColor,
            size: 25,
          ),
        ),
        SizedBox(
          width: screenSize.width * .05,
        ),
      ],
    );
  }
}
