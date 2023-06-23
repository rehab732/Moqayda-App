import 'package:flutter/material.dart';

import '../../utilities/app_color.dart';

class SwitchButton extends StatefulWidget {
  bool type;
  VoidCallback onTap;
  final String buttonText;
  // Color backGroundColor;
  SwitchButton({
    Key? key,
    required this.type,
    required this.buttonText,
    required this.onTap,
    // required this.backGroundColor,
  }) : super(key: key);

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.43,
      child: OutlinedButton(
        onPressed: () {
          setState(() {});
          widget.onTap;
        },
        //  () {
        //   setState(() {});
        //   widget.type = !widget.type;
        // },
        style: OutlinedButton.styleFrom(
          backgroundColor: widget.type ? AppColors.primary : null,
          //  widget.backGroundColor,

          side: BorderSide.none,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        ),
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.01),
          child: Text(
            widget.buttonText,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
    );
  }
}
