import 'package:flutter/material.dart';
import 'package:moqayda/pages/shared/chat_widgets/chatmessage.dart';

import 'package:moqayda/pages/shared/login/bar.dart';

class BlackList extends StatelessWidget {
  const BlackList({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: Bar(barname: 'القائمة السوداء'),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            blacklistbubble(context),
            SizedBox(
              height: screenSize.height*0.02,
            ),
            blacklistbubble(context),
          ],
        ),
      ),
    );
  }
}
