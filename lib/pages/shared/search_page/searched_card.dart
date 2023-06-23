import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../utilities/app_color.dart';

class SearchedCard extends StatelessWidget {
  final String textType;

  const SearchedCard({Key? key, required this.textType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.42,
      // height: size.height * 0.06,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.secondry,
          borderRadius: BorderRadius.circular(
            8.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: size.height * 0.01, horizontal: size.width * 0.04),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Icon(Icon),
              const Icon(Icons.clear_outlined),
              SizedBox(
                width: size.width * 0.12,
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
