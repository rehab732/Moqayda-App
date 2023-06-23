import 'package:flutter/material.dart';
import 'package:moqayda/utilities/app_color.dart';

class BuildCheckBox extends StatefulWidget {
  final String checkBoxTitle;
  const BuildCheckBox({
    Key? key,
    required this.checkBoxTitle,
  }) : super(key: key);

  @override
  State<BuildCheckBox> createState() => _BuildCheckBoxState();
}

class _BuildCheckBoxState extends State<BuildCheckBox> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      //! Important..
      //TODO: Maybe we need to refactor and test the Width of SizedBox..!
      width: size.width * 0.5,
      child: Column(
        children: [
          ListTile(
            title: Text(widget.checkBoxTitle),
            onTap: () {
              setState(() {
                value = !value;
              });
            },
            trailing: Checkbox(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
              activeColor: AppColors.primary,
              focusColor: Colors.black,
              fillColor: MaterialStateProperty.all(AppColors.primary),
              value: value,
              onChanged: (value) {
                setState(() {
                  this.value = value!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
