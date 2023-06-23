import 'package:flutter/material.dart';


class CustomFiled extends StatelessWidget {
   CustomFiled({required this.txt,required this.onsubmit, Key? key}):super(key: key);
String? txt;
void Function(String)? onsubmit;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          
          Text('$txt'),
          TextFormField(
            onFieldSubmitted: onsubmit,
            textAlign: TextAlign.right,
            keyboardType: TextInputType.text,
            decoration:const InputDecoration(
              border: InputBorder.none,
             // hintText:widget.txt!,
            ),
          ),
        ],
      ),
    );
  }
}
