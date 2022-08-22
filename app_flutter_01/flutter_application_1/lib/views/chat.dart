import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/notice.dart';
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
      appBar: PreferredSize(
        child: AppBar(
            //notice icon
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, noticeViewRoute);
                },
                
                icon: const Icon(Icons.notifications),
                iconSize: 40,
                padding: const EdgeInsets.all(19.0)
              )
            ],
            //title
            title: const Text(
              "Chat",
              //stule of title
              style: TextStyle(
                color: Color.fromRGBO(108, 95, 188, 1),
                fontSize: 34,
                height: 2.5,
              ),
            ),
            backgroundColor: Color.fromRGBO(188, 169, 255, 1)),
        preferredSize: Size.fromHeight(100),
      ),
      body: Text('Chat'),
      backgroundColor: Color.fromRGBO(243, 241, 255, 1),
    );
  }
}
