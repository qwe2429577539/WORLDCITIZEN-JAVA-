import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/mainpage/chat.dart';

const CONTACTBACKGROUND = Color.fromARGB(255, 255, 255, 255);

/// 聊天背景颜色设置
const GRADIENTDECORATIONCONTACT = BoxDecoration(
    gradient: LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color.fromARGB(255, 234, 228, 255),
    Color.fromARGB(255, 242, 220, 255)
  ],
));

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPage();
}

class _ContactPage extends State<ContactPage> {
  final TextEditingController _textEditingController = TextEditingController();

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
                      flex: 8,
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
      child: Text("Hello!"),
      padding: EdgeInsets.all(15),
      width: 20,
      margin: EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 249, 243),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(18),
            bottomLeft: Radius.circular(18),
            bottomRight: Radius.circular(18),
          )),
    );
  }

  Widget displayMessage(String text) {
    return Container(
        child: Padding(
            padding: EdgeInsets.only(left: 18, right: 18, top: 15, bottom: 0),
            child: ListView(children: [
              contactBubble(),
              contactBubble(),
            ])),
        decoration: GRADIENTDECORATIONCONTACT);
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
    return Flexible(
        //color: Color.fromARGB(255, 168, 139, 139),
        child: TextField(
      controller: _textEditingController,
      onChanged: (value) {},
      onSubmitted: (value) {},
      cursorColor: Color.fromARGB(255, 155, 139, 139),
      maxLength: null,
      maxLines: null,
      decoration: new InputDecoration.collapsed(hintText: "Type a message"),
    ));
  }

  Widget messageBar() {
    return Container(
      decoration:
          const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          emojiButton(),
          messageField(),
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
