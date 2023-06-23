import 'package:flutter/material.dart';

class customtext extends StatelessWidget {
  customtext({
    required this.textname,
    Key? key,
  }) : super(key: key);
  String? textname;
  @override
  Widget build(BuildContext context) {
    return Text(
      textname!,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
