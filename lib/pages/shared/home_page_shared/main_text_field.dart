import 'package:flutter/material.dart';

class MainTextFormField extends StatelessWidget {
  final String hintText;
  final Widget suffixIcon;
  const MainTextFormField({
    Key? key,
    required this.hintText,
    required this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.end,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.caption,
        suffixIcon: suffixIcon,
      ),
      // onTap:
    );
  }
}
