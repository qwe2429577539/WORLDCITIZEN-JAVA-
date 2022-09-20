/// chat page

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/mainpage/notice.dart';
import 'package:flutter_application_1/_routing/router.dart';
import 'package:flutter_application_1/_routing/routes.dart';
import 'package:flutter_application_1/components/ColorTheme.dart'
  as color_theme;
import 'package:flutter_application_1/components/CustomizedWidget.dart'
  as customized_widget;

const backgroundColor = Color.fromRGBO(188, 169, 255, 1);
const chatTextColor = Color.fromARGB(255, 255, 255, 255);
const reminderColor = Color.fromARGB(255, 255, 255, 255);
const mainPageTitleColor = Color.fromARGB(255, 255, 255, 255);

// Using to separate the chat list
final chatDivider = Divider(
  height: 2,
  // thickness: 1,
  color: Colors.white.withOpacity(0.9),
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
      decoration: color_theme.backgroundColor,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: customized_widget.mainPageAppBar(context, "Chat"),
        body: ListView(
          children: [
            customized_widget.divider,
            customized_widget.searchBar,
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
              customized_widget.avatar("https://img.seadn.io/files/287642025dee577c910b23ecf444385c.png?fit=max&w=600", true),
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
/*
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
*/

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
                  style: const TextStyle(fontSize: 17, color: chatTextColor),
                )),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  message,
                  style: const TextStyle(fontSize: 12, color: chatTextColor),
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
            style: TextStyle(fontSize: 11, color: reminderColor),
          )),
      Icon(
        Icons.timer,
        color: reminderColor,
      ),
    ]);
  } //Chat状态提示
}
