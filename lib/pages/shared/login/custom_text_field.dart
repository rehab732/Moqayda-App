import 'package:flutter/material.dart';

// class customtextformfield extends StatelessWidget {
//    customtextformfield({
//      this.validat,
//     required this.hintText,
//     Key? key,
//     required this.controllername,
//   }) : super(key: key);

//   final TextEditingController controllername;
//   String? hintText;
  
//  Function(String)? validat;

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       validator:(data){
//         if(data!.isEmpty)
//         {
//           return 'feild is required';
//         }

//       } ,
//       textAlign: TextAlign.right,
//       keyboardType: TextInputType.text,
//       controller: controllername,
//       decoration:  InputDecoration(
//           border: InputBorder.none, hintText: hintText!),
//     );
//   }
// }


class customtextfield extends StatefulWidget {
   customtextfield({
     required this.controllername,
     this.obscureText=false,
    this.hintText,
    Key? key,
  }) : super(key: key);

      TextEditingController controllername;
     String? hintText;
      bool? obscureText;

  @override
  State<customtextfield> createState() => _customtextfieldState();
}

class _customtextfieldState extends State<customtextfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child:TextFormField(
        obscureText:widget.obscureText! ,
      validator:(data){
        if(data!.isEmpty)
        {
          return 'feild is required';
        }

      } ,
      textAlign: TextAlign.right,
      keyboardType: TextInputType.text,
      controller: widget.controllername,
      decoration:  InputDecoration(
          border: InputBorder.none, hintText: widget.hintText!),
    ) ,
    );
  }
}