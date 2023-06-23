import 'package:flutter/material.dart';

import '../../shared/chat_widgets/chatmessage.dart';

class AllMessages extends StatelessWidget {
  const AllMessages({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          readmessage(context),
          SizedBox(
            height: screenSize.height * 0.02,
          ),
          unreadmessage(context),
          SizedBox(
            height: screenSize.height * 0.02,
          ),
          readmessage(context),
          SizedBox(
            height: screenSize.height * 0.02,
          ),
          unreadmessage(context),
          // ListView.builder(
          //   itemCount: 3,
          //   itemBuilder: (BuildContext context,int index){
          //     return message_bubble();
          //   }

          //   )
        ],
      ),
    );
  }
}
