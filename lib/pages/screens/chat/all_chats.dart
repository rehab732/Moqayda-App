import 'package:flutter/material.dart';
import 'package:moqayda/pages/screens/chat/all_message.dart';
import 'package:moqayda/pages/screens/chat/unread_message.dart';
import 'package:moqayda/utilities/app_color.dart';

class AllChats extends StatefulWidget {
  const AllChats({super.key});

  @override
  State<AllChats> createState() => _AllChatsState();
}

class _AllChatsState extends State<AllChats> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Kwhite,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Kwhite,
          bottom: const TabBar(
              labelColor: Kblack,
              unselectedLabelColor: Kblack,
              unselectedLabelStyle: TextStyle(color: Colors.red),
              indicatorColor: Kblack,
              tabs: [
                Tab(
                  text: 'غير مقروءة',
                ),
                Tab(
                  text: 'الكل',
                ),
              ]),
        ),
        body: const TabBarView(
          children: [
            UnReadMessages(),
            AllMessages(),
          ],
        ),
      ),
    );
  }
}
