import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/mainpage/chat.dart';

const CONTACTBACKGROUND = Color.fromARGB(255, 255, 255, 255);

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPage();
}

class _ContactPage extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: GRADIENTDECORATION,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            "Chat",
            //style of title
            style: TextStyle(
              color: Color.fromRGBO(108, 95, 188, 1),
              fontSize: 34,
              height: 2,
            ),
          ),
          centerTitle: true,
          toolbarHeight: 110,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          color: CONTACTBACKGROUND,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    // 聊天窗口
                    Expanded(
                      flex: 9,
                      child: displayMessage("hi"),
                    ), // 聊天窗口

                    //输入栏
                    Expanded(
                      flex: 1,
                      child: messageBar(),
                    ), //输入栏
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget displayMessage(String text) {
    return Container(
      child: ListView(children: const [
        Text('data'),
      ]),
    );
  }

  IconButton emojiButton() {
    return IconButton(
      onPressed: null,
      icon: Icon(Icons.emoji_emotions),
    );
  }

  Widget messageField() {
    // TODO: debug
    return Container(
        color: Color.fromARGB(255, 168, 139, 139),
        child: const TextField(
          controller: null,
          cursorColor: Color.fromARGB(255, 155, 139, 139),
          maxLength: null,
          maxLines: null,
        ));
  }

  Widget messageBar() {
    return Container(
      child: Row(
        children: [
          emojiButton(),
          // messageField(), //有BUG
          Text('Okay'),
        ],
      ),
    );
  }
}
