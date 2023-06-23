import 'package:flutter/material.dart';

import '../../../utilities/app_color.dart';

class chatsend extends StatelessWidget {
   chatsend({Key? key,this.message,
  }) : super(key: key);
  String? message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        height: 65,
        width: 150,
        padding:
            const EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 16),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: const BoxDecoration(
            color:KButtonColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
            
              bottomRight: Radius.circular(10),
            )),
        child:  Center(
            child: Text(
              message!,
            
          style:const TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}





class chatforfriend extends StatelessWidget {
   chatforfriend({Key? key, this.message
  }) : super(key: key);
 String? message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 65,
        width: 150,
        padding:
            const EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 16),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration:  const BoxDecoration(
            color:Colors.grey,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
            
              bottomRight: Radius.circular(10),
            )),
        child:  Center(
            child: Text(
             message!,
           
          style: const TextStyle(color: Kblack),
        )),
      ),
    );
  }
}
