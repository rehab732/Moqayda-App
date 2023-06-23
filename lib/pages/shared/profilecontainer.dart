import 'package:flutter/material.dart';

import '../../utilities/app_color.dart';


// ignore: camel_case_types
class profilecontainer extends StatelessWidget {
   profilecontainer({super.key,this.textname,required this.ontap});
  String? textname;
 //VoidCallback? ontap;
  Function()? ontap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      
      child: Container(
        width: double.infinity,
        height: 50,
          decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Icon(Icons.arrow_back_ios_sharp,color: Colors.grey,),
           const  Spacer(),
            
           Text(textname!,style:const TextStyle(color: Kblack,fontWeight: FontWeight.bold,fontSize: 20),),
      
            
          ],
        ),
      ),
    );
  }
}