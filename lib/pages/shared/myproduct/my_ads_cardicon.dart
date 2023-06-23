import 'package:flutter/material.dart';

class MyAdsCardIcon extends StatelessWidget {
  final Size size;
  final IconData iconType;
  const MyAdsCardIcon({
    Key? key,
    required this.size,
    required this.iconType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size.width * 0.01),
          border: Border.all(color: Colors.grey.shade300)),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Icon(
          iconType,
          color: Colors.black,
        ),
      ),
    );
  }
}