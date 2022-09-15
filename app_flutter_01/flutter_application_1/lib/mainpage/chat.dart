/**
 * chat page
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/mainpage/notice.dart';
import 'package:flutter_application_1/_routing/router.dart';
import 'package:flutter_application_1/_routing/routes.dart';

const BACKGROUNDCOLOR = Color.fromRGBO(188, 169, 255, 1);
const CHATTEXTCOLOR = Color.fromARGB(255, 255, 255, 255);
const REMINDERCOLOR = Color.fromARGB(255, 255, 255, 255);

/// 整体背景颜色设置
const GRADIENTDECORATION = BoxDecoration(
    gradient: LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color.fromARGB(255, 196, 124, 254),
    Color.fromARGB(255, 132, 89, 242)
  ],
));

// Using to separate the chat list
const chatDivider = Divider(
  height: 30,
  thickness: 1,
);

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPage();
}

class _ChatPage extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: GRADIENTDECORATION,
      child: Scaffold(
        backgroundColor: Colors.transparent,
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
            //style of title
            style: TextStyle(
              color: Color.fromRGBO(108, 95, 188, 1),
              fontSize: 34,
              height: 2,
            ),
          ),
          toolbarHeight: 110,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: ListView(
          children: [
            Container(
                padding: const EdgeInsets.only(
                    left: 0, top: 0, bottom: 10, right: 0),
                child: const Divider(
                  height: 1,
                  thickness: 1,
                  color: Color.fromARGB(100, 255, 255, 255),
                )),
            Container(
                //chat list
                padding:
                    const EdgeInsets.only(left: 0, top: 0, bottom: 0, right: 0),
                child: Column(
                  children: [
                    userChat("Lucas(Australia)",
                        "Hey bro, let's meetup at centre point corner."),
                    userChat("Chunbin(China)", "Greeting!"),
                    userChat("Tom(China)", "There is a meeting tonight.")
                  ],
                )),
          ],
        ),
      ),
    );
  }

  /// chat单元
  Widget userChat(String name, String message) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.only(left: 30, top: 0, bottom: 0, right: 20),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              //横向内容
              userAvatar(),
              userText(name, message),
              userNotice(),
            ]),
            chatDivider
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, contactRoute);
      },
    );
  } // chat单元

  /// 用户头像容器
  Widget userAvatar() {
    return Container(
      //头像容器
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(255, 223, 255, 1),
              Color.fromRGBO(75, 38, 118, 1)
            ]),
        borderRadius: BorderRadius.circular(20),
      ),
      //头像容器
      child: Center(
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: NetworkImage(
                    "https://img.seadn.io/files/287642025dee577c910b23ecf444385c.png?fit=max&w=600"),
              )),
        ),
      ),
    );
  } // 用户头像容器

  /// 用户Text内容容器
  Widget userText(String name, String message) {
    return Container(
        //Text 容器
        width: 200,
        margin: const EdgeInsets.only(left: 10, right: 10),
        // padding:
        //     EdgeInsets.only(left: 2, top: 20, bottom: 20, right: 2),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  name,
                  style: const TextStyle(fontSize: 17, color: CHATTEXTCOLOR),
                )),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  message,
                  style: const TextStyle(fontSize: 12, color: CHATTEXTCOLOR),
                )),
          ],
        )); //Text 容器
  } // 用户Text内容容器

  ///Chat状态提示
  Widget userNotice() {
    return
        //提示栏 容器
        Column(children: const [
      Align(
          alignment: Alignment.topCenter,
          child: Text(
            "2m ago",
            style: TextStyle(fontSize: 11, color: REMINDERCOLOR),
          )),
      Icon(
        Icons.timer,
        color: REMINDERCOLOR,
      ),
    ]);
  } //Chat状态提示
}
