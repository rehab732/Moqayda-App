import 'package:flutter/material.dart';
import 'package:moqayda/utilities/app_color.dart';

class MainBoxHome extends StatelessWidget {
  final String textType;
  final IconData iconType;
  const MainBoxHome({
    Key? key,
    required this.textType,
    required this.iconType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      // height: size.height * 0.2,
      width: size.width * 0.4,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.secondry,
          borderRadius: BorderRadius.circular(
            12.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: size.height * 0.025, horizontal: size.height * 0.02),
          child: Column(
            children: [
              Icon(
                iconType,
                size: size.height * 0.08,
                color: AppColors.activeColorBottomNavBar,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                textType,
                style: TextStyle(fontSize: size.width * 0.04),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
