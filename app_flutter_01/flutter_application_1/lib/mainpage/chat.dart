/**
 * chat page
 */

import 'package:flutter/material.dart';
import 'package:flutter_application_1/mainpage/notice.dart';
import 'package:flutter_application_1/_routing/router.dart';
import 'package:flutter_application_1/_routing/routes.dart';




class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPage();
}

class _ChatPage extends State<ChatPage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, noticeViewRoute);
                },
                icon: const Icon(Icons.notifications),
                iconSize: 40,
                padding: const EdgeInsets.all(20.0))
          ],
          //title
          title: const Text(
            "Chat",
            //stule of title
            style: TextStyle(
              color: Color.fromRGBO(108, 95, 188, 1),
              fontSize: 34,
              height: 2,
            ),
          ),
          toolbarHeight: 110,
          backgroundColor: Color.fromRGBO(188, 169, 255, 1),
          elevation: 0,
      ),
      body: Text('Chat'),
      backgroundColor: Color.fromRGBO(243, 241, 255, 1),
    );
  }
}
