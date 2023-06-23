import 'package:flutter/material.dart';
import 'package:moqayda/pages/shared/login/bar.dart';
import 'package:moqayda/utilities/app_color.dart';

import '../../shared/chat_widgets/chatBubbles.dart';

class ChatPage extends StatelessWidget {
   ChatPage({super.key});
    TextEditingController messagecontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: Bar(barname: 'رحاب محمد احمد'),
      body: Column(
        children:  [
          Expanded(
            child: Column(
              children: [
                chatsend(message: 'مساء الخير أ محمد',),
          chatforfriend(message: 'ي هلا مسا الانور',),
           chatsend(message:'اريد ان اقايضك؟'),
            chatforfriend(message: '   تمام ما فى اى مشكلة',),

              ],
            ),
          ),
          
            Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: messagecontroller,
              onSubmitted: (data){
                // messages.add({
                //   KMessage:data,
                //   KCreatedAt:DateTime.now(),
                //   'id':email 
                // });
                // messagecontroller.clear();
                // _controller.animateTo(
                //   0,
                //   duration: Duration(milliseconds: 500),
                //   curve: Curves.easeIn
                // );
              },
              decoration: InputDecoration(
                hintText: 'Send Message',
                suffixIcon: const Icon(Icons.send,color:KButtonColor,),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide:const  BorderSide(
                        color: KButtonColor,
                      )
                      )
                      ),
            ),

          ),
          SizedBox(height: screenSize.height*0.03,)
        ],
      ),
    );
  }
}