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
                      flex: 6,
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

  Widget contactBubble() {
    return Container(
      child: Text("a"),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Color.fromARGB(99, 228, 191, 191),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18),
          )),
    );
  }

  Widget displayMessage(String text) {
    return Container(
      child: ListView(children: [
        contactBubble(),
        contactBubble(),
      ]),
    );
  }

  IconButton emojiButton() {
    return IconButton(
      onPressed: null,
      icon: Icon(Icons.emoji_emotions),
    );
  }

  IconButton sendButton() {
    return IconButton(
      onPressed: null,
      icon: Icon(Icons.send),
    );
  }

  IconButton infoButton() {
    return IconButton(
      onPressed: null,
      icon: Icon(Icons.info),
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
      decoration: const BoxDecoration(color: Color.fromARGB(99, 133, 129, 129)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          emojiButton(),
          // messageField(), //有BUG
          const Text('Okay'),
          Spacer(),
          sendButton(),
          infoButton(),

          // Container(
          //     child: keyBoardButton(),
          //     padding: const EdgeInsets.all(20),
          //     alignment: Alignment.centerRight),
        ],
      ),
    );
  }
}
