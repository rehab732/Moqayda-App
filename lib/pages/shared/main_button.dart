import 'package:flutter/material.dart';
import 'package:moqayda/utilities/app_color.dart';

class MainButton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  bool small = true;
  bool medium = true;
  bool rounded = true;
  MainButton(
      {Key? key,
      required this.text,
      required this.ontap,
      required this.small,
      required this.medium,
      required this.rounded})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        width: small
            ? size.width * 0.33
            : medium
                ? size.width * 0.4
                : size.width * 0.52,
        child: ElevatedButton(
          onPressed: ontap,
          style: ElevatedButton.styleFrom(
            
              primary: AppColors.activeColorBottomNavBar,
              shape: RoundedRectangleBorder(
                
                  borderRadius: rounded
                      ? BorderRadius.circular(4.0)
                      : BorderRadius.circular(0.01))),
          child: Center(
            child: Padding(
              padding: small
                  ? EdgeInsets.all(size.width * 0.005)
                  : medium
                      ? EdgeInsets.all(size.width * 0.01)
                      : EdgeInsets.all(size.width * 0.03),
              child: Text(
                text,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
          ),
        ));
  }
}
