import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/mainpage/chat.dart';

const contactBackground = Color.fromARGB(255, 255, 255, 255);
const sendMessageBubbleColor = Color.fromARGB(255, 255, 249, 243);
const receiveMessageBubbleColor = Color.fromARGB(255, 108, 95, 188);
const sendMessageColor = Color.fromARGB(255, 42, 46, 83);
const receiveMessageColor = Color.fromARGB(255, 255, 255, 255);

/// 聊天背景颜色设置
const gradientDecorationContact = BoxDecoration(
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
  final TextEditingController _textController = TextEditingController();
  List<Widget> bubbleList = <Widget>[];

  void getInputText() {
    setState(() {
      String text = _textController.text;
      _textController.clear();
      // bubbleList.add(contactBubbleOutside(text, true));
      bubbleList.add(contactBubble(text, true));
    });
  }

  /// 聊天信息陈列
  Widget displayMessage() {
    return Container(
        decoration: gradientDecorationContact,
        child: Padding(
            padding:
                const EdgeInsets.only(left: 18, right: 18, top: 15, bottom: 0),
            child: ListView.builder(
                itemCount: bubbleList.length,
                itemBuilder: (BuildContext context, int index) {
                  return bubbleList[index];
                }))
        // child: ListView(
        //   children: bubbleList,
        //   //   children: [
        //   //   contactBubble("Hello!", false),
        //   //   contactBubble("Greeting!", true),
        //   // ]
        //   ),
        // ),
        );
  } // 聊天信息陈列

  IconButton emojiButton() {
    return IconButton(
      onPressed: null,
      icon: Icon(Icons.emoji_emotions_outlined),
    );
  }

  IconButton sendButton() {
    return IconButton(
      onPressed: () {
        setState(() {
          getInputText();
        });
      },
      icon: const Icon(Icons.send),
    );
  }

  IconButton infoButton() {
    String text;
    return IconButton(
      onPressed: null,
      icon: Icon(Icons.info),
    );
  }

  Widget inputField() {
    return Flexible(
        //color: Color.fromARGB(255, 168, 139, 139),
        child: TextField(
      controller: _textController,
      onChanged: (value) {},
      onSubmitted: (value) {},
      cursorColor: const Color.fromARGB(255, 155, 139, 139),
      maxLength: null,
      maxLines: null,
      decoration: const InputDecoration.collapsed(hintText: "Type a message"),
    ));
  }

  Widget messageBar() {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          emojiButton(),
          inputField(),
          sendButton(),
          infoButton(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    bubbleList = <Widget>[
      contactBubble("Hello!", true),
      contactBubble("Greeting!", false),
    ];

    return Container(
      decoration: gradientDecoration,
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
          color: contactBackground,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    // 聊天窗口
                    Expanded(
                      flex: 8,
                      child: displayMessage(),
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

  /// 聊天气泡组件
  /// sentText (String): 气泡消息内容
  /// messageType (boolean): 消息来源开关,true为己方发出,false为对方发出，控制气泡位置、颜色等
  Widget contactBubble(sentText, messageType) {
    const radius = Radius.circular(18);
    const angle = Radius.circular(0);

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment:
          messageType ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
              color: messageType
                  ? receiveMessageBubbleColor
                  : sendMessageBubbleColor,
              borderRadius: BorderRadius.only(
                topRight: messageType ? angle : radius,
                topLeft: messageType ? radius : angle,
                bottomLeft: radius,
                bottomRight: radius,
              )),
          child: Text(
            sentText,
            style: TextStyle(
                color: messageType ? receiveMessageColor : sendMessageColor),
          ),
        )
      ],
    );
  } // 聊天气泡组件
}

// class Display extends StatefulWidget {
//   const Display({Key? key}) : super(key: key);

//   @override
//   State<Display> createState() => _Display();
// }

// class _Display extends State<Display> {
//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }
