import 'package:flutter/material.dart';

import '../../../utilities/app_color.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.buttonname,
      this.onPressed,
      this.buttoncolor = KButtonColor,
      this.textcolor = Kwhite});
  String? buttonname;
  VoidCallback? onPressed;
  Color buttoncolor;
  Color textcolor;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: screenSize.height * .06,
      width: screenSize.width * 0.3,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            primary: buttoncolor,
            
            shape: RoundedRectangleBorder(
              side: BorderSide(color: KButtonColor,width:1 ),
                borderRadius: BorderRadius.circular(10),
                
               
                ),
                
                ),
        child: Text(
          buttonname!,
          style: TextStyle(fontWeight: FontWeight.bold, color: textcolor),
        ),
      ),
    );
  }
}
